# {Görli,Kotti} Testnet
The `--goerli` and `--kotti` cross-client proof-of-authority testnet configurations. [![Chat on Gitter](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/goerli/testnet)

- https://goerli.net

There are many Ethereum testnets available for experimenting with smart contracts and deploying decentralised applications before going live on the main Ethereum network. However, there is no testnet available that is both widely usable across all client implementations, and robust enough to guarantee consistent availability and high reliability. This is what **Görli** tries to be for Ethereum and **Kotti** for Ethereum Classic. Read more on the motivation in the [Testnet Proposal](https://dev.to/5chdn/the-grli-testnet-proposal---a-call-for-participation-58pf).

### Meta data: Görli

See also: [Getting started with the Görli Testnet](https://mudit.blog/getting-started-goerli-testnet/).

- Name: **Görli**
- Machine-readable name: `goerli`
- Stage: _launched_
  - PoA Engine: `clique`
  - Epoch interval: `30000`
  - Step period: `15`
  - Genesis hash: `0xbf7e331f7f7c1dd2e05159666b3bf8bc7a8a3a9eb1d518969eab529dd9b88c1a`
  - Network ID: `5`
  - Chain ID: `5`
  - Homestead: `0`
  - Byzantium: `0`
  - Constantinople: `0`
  - Petersfork: `0`
  - Istanbul: `1_561_651`
  - Berlin: `4_460_644`
  - London: `5_062_605`
- Status Dashboard: 
  - https://stats.goerli.net/
- Block Explorer: 
  - https://goerli.etherscan.io/
  - https://expedition.dev/?network=goerli
- Faucets:
  - https://fauceth.komputing.org/?chain=5 (No social media account required)
  - https://faucet.paradigm.xyz/
  - https://goerli-faucet.dappnode.net/
  - https://faucet.goerli.mudit.blog/
  - https://faucets.chain.link/goerli (No social media account required)
- Open RPC Endpoints:
  - https://goerli.prylabs.net
  - https://rpc.goerli.mudit.blog
  - https://rpc.slock.it/goerli
  - https://www.ethercluster.com/goerli
  - https://services.fault.dev
- Gitter: https://gitter.im/goerli/testnet/

Please see [goerli.genesis](geth/goerli.genesis) for a genesis file compatible with Hyperledger Besu (formerly Pantheon) or Geth.

Please see [goerli.json](parity/goerli.json) for a chain specification compatible with Nethermind or Parity Ethereum.

Please see [bootnodes.txt](bootnodes.txt) if you fail connecting to the network.

### Meta data: Kotti (Classic)

The Kotti Classic Testnet configuration and resources moved to its own repository:
* https://github.com/eth-classic/kotti

### Connecting the clients

All clients supporting the Clique engine (EIP-225) are able to sync with Görli or Kotti.

##### Go-Ethereum

You can connect Geth to Görli by executing `geth --goerli`. https://github.com/ethereum/go-ethereum/releases

You can connect Core-Geth to Kotti by executing `geth --kotti`. https://github.com/etclabscore/core-geth/releases

##### Hyperledger Besu

Connect to Görli using Hyperledger Besu by executing `besu --network=goerli`. https://github.com/hyperledger/besu/releases

Connect to Kotti using Hyperledger Besu by executing `besu --network=kotti`.

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

Run a node, [report bugs](https://github.com/goerli/testnet/issues), and join our [Gitter](https://gitter.im/goerli/testnet)!

The Goerli Testnet Initiative concluded their work and does no longer accept donations. Thanks for all the support :heart: 2018 - 2020.
