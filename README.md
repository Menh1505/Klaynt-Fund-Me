# Klaytn Fund Me

This project implements a crowdfunding smart contract on the Klaytn blockchain. It allows users to fund projects and retrieve their funds, with additional features like minimum funding amounts and contract owner management.

## Features

- Deploy and manage a crowdfunding contract on Klaytn
- Set minimum funding amounts
- Allow users to fund the contract
- Enable fund withdrawal by the contract owner
- Permit funders to retrieve their funds

## Prerequisites

- Foundry
- Klaytn Baobab testnet access
- Klaytn wallet with KLAY for gas fees

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Ensure that you have installed Rust and Cargo.
Please follow the [installation guide](https://www.rust-lang.org/tools/install)

## Ensure that you have installed Foundry.
Please follow the [installation guide](https://book.getfoundry.sh/getting-started/installation)

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

### Deploy Testnet

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Deploy broadcast

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key> --broadcast --gas-estimate-multiplier 200
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
