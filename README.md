# Görli Testnet
The `--goerli` cross-client proof-of-authority testnet configuration.

- Website: https://goerli.net
- Matrix: `#goerli_chat:gitter.im` (bridged to `gitter.im/goerli/chat`)

Goerli Testnet is the first proof-of-authority cross-client testnet, synching Geth, Nethermind, Hyperledger Besu, and others. This testnet is a community-based project and completely open-source. It was born in September 2018 during [ETHBerlin](https://twitter.com/ETHBerlin) and has been growing in contributors ever since.

Goerli testnet will be merged with the [Prater proof-of-stake beacon chain](https://prater.beaconcha.in/). This will mark the end of the permissioned proof-of-authority phase and everyone will be able to run a validator for Goerli.

Run `geth --goerli` or `besu --network=goerli` to sync the testnet. The Chain ID is `5`. Native integrations are available for MetaMask, Infura, Alchemy, etc.

### Meta data: Görli

- Name: **Görli**
- Flag: `--goerli`
- Stage: _launched_
  - PoA Engine: `clique`
  - Epoch interval: `30000`
  - Step period: `15`
  - Genesis hash: `0xbf7e331f7f7c1dd2e05159666b3bf8bc7a8a3a9eb1d518969eab529dd9b88c1a`
  - Network ID: `5`
  - Chain ID: `5`
- EVM Version: `London`
  - Homestead: `0`
  - Byzantium: `0`
  - Constantinople: `0`
  - Petersfork: `0`
  - Istanbul: `1_561_651`
  - Berlin: `4_460_644`
  - London: `5_062_605`
- Status Dashboard: 
  - https://stats.goerli.net/
- Block Explorers: 
  - https://goerli.etherscan.io/
- Faucets:
  - https://goerlifaucet.com (No auth, or social media account required)
  - https://fauceth.komputing.org/?chain=5 (No social media account required)
  - https://faucet.paradigm.xyz/
  - https://faucet.goerli.mudit.blog/
  - https://faucets.chain.link/goerli (No social media account required)
  - https://goerli-faucet.pk910.de/ (PoW powered, No social media account required)
  - https://goerli-faucet.com/ ([Open Source](https://github.com/ayanamitech/ethereum-faucet), Telegram Bot authenticated, No social media account required)
- Open RPC Endpoints:
  - https://goerli.prylabs.net
  - https://rpc.goerli.mudit.blog
  - https://rpc.slock.it/goerli
  - https://www.ethercluster.com/goerli
  - https://rpc.ankr.com/eth_goerli

### Connecting the clients

All clients supporting the Clique engine (EIP-225) are able to sync with Görli or Kotti.

##### Go-Ethereum

You can connect Geth to Görli by executing `geth --goerli`. https://github.com/ethereum/go-ethereum/releases

##### Hyperledger Besu

Connect to Görli using Hyperledger Besu by executing `besu --network=goerli`. https://github.com/hyperledger/besu/releases

##### Nethermind

Connect to Görli by using the provided goerli.cfg included in Nethermind 0.9.1: https://github.com/NethermindEth/nethermind/releases

```
dotnet run --config configs/goerli.cfg
```

##### EthereumJS

Connect to Görli by using the provided state and genesis included in EthereumJS 0.6.1: https://github.com/ethereumjs/ethereumjs-common/releases

```
./bin/cli.js --network goerli
```

### Contribute

Run a node and [report bugs](https://github.com/goerli/testnet/issues)!
