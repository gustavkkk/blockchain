pragma solidity ^0.4.18;

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {

    /**
    * @dev Multiplies two numbers, throws on overflow.
    */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        assert(c / a == b);
        return c;
    }

    /**
    * @dev Integer division of two numbers, truncating the quotient.
    */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // assert(b > 0); // Solidity automatically throws when dividing by 0
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold
        return c;
    }

    /**
    * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    /**
    * @dev Adds two numbers, throws on overflow.
    */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }
    }

contract " {
    using SafeMath for uint256;
    mapping(address => uint256) nonces;
    mapping(address => uint256) public balances;
    mapping (address => mapping (address => uint256)) allowed;
    string public name;
    string public symbol;
    uint8 public decimals = 4;
    uint256 public totalSupply;
    bool public stopped;
    address public owner;
    bytes32[]  public shopHash;
    uint256 public circulation; 
    address public platform;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    /* This notifies clients about the amount burnt */
    event Burn(address indexed from, uint256 value);

    function Token(string _name, string _symbol, uint256 _totalSupply, uint256 _circulation, bytes32 _shopHash) public {
        require(_circulation <= _totalSupply);
        totalSupply = _totalSupply;
        name = _name;
        symbol = _symbol;
        owner = msg.sender;
        balances[owner] = _circulation;
        shopHash.push(_shopHash);
        circulation = _circulation;
    }

    modifier isRunning {
        assert (!stopped);
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    ///更改stopped状态
    function changeStop(bool _stopped) onlyOwner public returns (bool success) {
        require(stopped != _stopped);
        stopped = _stopped;
        return true;
    }

    //增加当前商铺的流通份额.
    function addCirculation(uint256 _value) onlyOwner isRunning public returns (bool) {
        require (_value > 0 && SafeMath.add(_value, circulation) <= totalSupply);
        balances[msg.sender] = SafeMath.add(balances[msg.sender], _value);
        circulation = SafeMath.add(circulation, _value);
        return true;
    }

    ///增加商铺有效文件的hash值到shopHash数组中
    function addShopHash(bytes32 _shopHash) onlyOwner public returns(bool) {
        shopHash.push(_shopHash);
        return true;
    }

    //允许某个地址转账
    function transferFrom(address _from, address _to, uint256 _value) isRunning public returns (bool success) {
    //same as above. Replace this line with the following if you want to protect against wrapping uints.
        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
            balances[_to] = SafeMath.add(balances[_to], _value);
            balances[_from] = SafeMath.sub(balances[_from], _value);
            allowed[_from][msg.sender] =SafeMath.sub(allowed[_from][msg.sender], _value);
            Transfer(_from, _to, _value);
            return true;
        } else { return false; }
    }

    function approve(address _spender, uint256 _value, uint8 v, bytes32 r, bytes32 s) isRunning public returns (bool success) {
        uint256 nonce = nonces[msg.sender];
        bytes32 hash = keccak256(msg.sender,_spender,_value,nonce);
        require(platform == ecrecover(hash, v, r, s));
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        nonces[msg.sender] = nonce + 1;
        return true;
    }

    function allowance(address _owner, address _spender) constant public returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }

    function increaseApproval(address _spender, uint _addedValue, uint8 v, bytes32 r, bytes32 s) isRunning public returns (bool) {
        uint256 nonce = nonces[msg.sender];
        bytes32 hash = keccak256(msg.sender,_spender,_addedValue,nonce);
        require(platform == ecrecover(hash, v, r, s));
        allowed[msg.sender][_spender] = SafeMath.add(allowed[msg.sender][_spender], _addedValue);
        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
        nonces[msg.sender] = nonce + 1;
        return true;
    }

    function decreaseApproval(address _spender, uint _subtractedValue, uint8 v, bytes32 r, bytes32 s) isRunning public returns (bool) {
        uint256 nonce = nonces[msg.sender];
        bytes32 hash = keccak256(msg.sender,_spender,_subtractedValue,nonce);
        require(platform == ecrecover(hash, v, r, s));
        uint oldValue = allowed[msg.sender][_spender];
        if (_subtractedValue > oldValue) {
            allowed[msg.sender][_spender] = 0;
        } else {
            allowed[msg.sender][_spender] = SafeMath.sub(oldValue, _subtractedValue);
        }
        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
        nonces[msg.sender] = nonce + 1;
        return true;
    }


    /*
     * Proxy approve that some one can authorize the agent for broadcast transaction
     * which call approve method, and agents may charge agency fees
     * @param _from The address which should tranfer SMT to others
     * @param _spender The spender who allowed by _from
     * @param _value The value that should be tranfered.
     * @param _v
     * @param _r
     * @param _s
     */
    function approveProxy(address _from, address _spender, uint256 _value,
        uint8[2] v, bytes32[2] r, bytes32[2] s) public returns (bool success) {
        require(_value <= balances[_from]);
        uint256 nonce = nonces[_from];
        bytes32 hash = keccak256(_from,_spender,_value,nonce);
        require(_from == ecrecover(hash, v[0], r[0], s[0]));
        require(platform == ecrecover(hash, v[1], r[1], s[1]));
        allowed[_from][_spender] = SafeMath.add(allowed[_from][_spender], _value);
        Approval(_from, _spender, _value);
        nonces[_from] = nonce + 1;
        return true;
    }

    function decreaseApprovalProxy(address _from, address _spender, uint _subtractedValue,
        uint8[2] v, bytes32[2] r, bytes32[2] s) isRunning public returns (bool) {
        uint oldValue = allowed[msg.sender][_spender];
        uint256 nonce = nonces[_from];
        bytes32 hash = keccak256(_from,_spender,_subtractedValue,nonce);
        require(_from == ecrecover(hash, v[0], r[0], s[0]));
        require(platform == ecrecover(hash, v[1], r[1], s[1]));
        if (_subtractedValue > oldValue) {
            allowed[msg.sender][_spender] = 0;
        } else {
            allowed[msg.sender][_spender] = SafeMath.sub(allowed[msg.sender][_spender], _subtractedValue);
        }
            Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
        nonces[_from] = nonce + 1;
        return true;
    }


    function balanceOf(address _owner) public constant returns (uint) {
        return balances[_owner];
    }

    function getNonce(address _who) public constant returns (uint) {
      return nonces[_who];
    }

    function burn(uint256 _value, uint8 v, bytes32 r, bytes32 s) public returns (bool success) {
        uint256 nonce = nonces[msg.sender];
        bytes32 hash = keccak256(msg.sender,_value,nonce);
        require(platform == ecrecover(hash, v, r, s));
        require(balances[msg.sender] > _value);            // Check if the sender has enough
        require(_value > 0);
        balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);                      // Subtract from the sender
        totalSupply = SafeMath.sub(totalSupply,_value);                                // Updates totalSupply
        Burn(msg.sender, _value);
        nonces[msg.sender] = nonce + 1;
        return true;
    }

    function setPlatform(address _platform) public onlyOwner returns (bool) {
        platform = _platform;
        return true;
    }

}