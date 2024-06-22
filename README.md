## Deploy

- Must have forge installed

- add values to the env file

- source .env

- forge create --rpc-url $BASE_SEPOLIA_RPC_URL --constructor-args $ZORA_1155_ADDRESS --private-key $DEPLOYER_PRIVATE_KEY --etherscan-api-key $BASESCAN_KEY --verify --chain-id $CHAIN_ID src/Affinity/Affinity.sol:Affinity

- grant access to deployed contract address to allow for admin mint ( should be 4 ) for every token id created

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
