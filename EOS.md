### [Organization](https://github.com/EOSIO)

   - [eos](https://github.com/EOSIO/eos)
   
   - [rpc](https://eosio.github.io/eos/group__eosiorpc.html)

### [Documentation](https://github.com/EOSIO/Documentation)

### [Guide](https://github.com/EOSIO/eos/wiki)

### Install

      $ git clone https://github.com/EOSIO/eos
      $ git submodule update --init --recursive
      $ cd eos
      $ ./eosio_build.sh
      $ ~/opt/mongodb/bin/mongod -f ~/opt/mongodb/mongod.conf &
      $ cd build
      $ make test
      $ sudo make install
      
      run
      $ cd build/programs/nodeos
      $ ./nodeos -e -p eosio --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin 

### [Install-Using-Docker](https://github.com/EOSIO/eos/blob/master/Docker/README.md)

      $ git clone https://github.com/EOSIO/eos.git --recursive  --depth 1
      $ cd eos/Docker
      $ docker build . -t eosio/eos
      specific version
      $ docker build -t eosio/eos:v1.0.1 --build-arg branch=v1.0.1 .
      $ docker build -t eosio/eos --build-arg symbol=<symbol> .

