# {Görli|Kotti} Testnet
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
- Status Dashboard: 
  - https://stats.goerli.net/
  - https://goerli.ethstats.io/
- Block Explorer: 
  - https://goerli.etherscan.io/
  - https://goerli.ethstats.io/
  - https://blockscout.com/eth/goerli/
  - https://explorer.goerli.net/
- Faucets:
  - https://bridge.goerli.com/
  - https://faucet.goerli.mudit.blog/
  - https://goerli-faucet.slock.it/
- Open RPC Endpoints:
  - http://goerli.blockscout.com
  - http://goerli.prylabs.net
  - https://rpc.goerli.mudit.blog
  - https://rpc.slock.it/goerli
- Gitter: https://gitter.im/goerli/testnet/

Please see [goerli.genesis](geth/goerli.genesis) for a genesis file compatible with Pantheon or Geth.

Please see [goerli.json](parity/goerli.json) for a chain specification compatible with Nethermind or Parity Ethereum.

Please see [bootnodes.txt](bootnodes.txt) if you fail connecting to the network.

### Meta data: Kotti (Classic)

- Name: **Kotti** (Classic)
- Machine-readable name: `kotti`
- Stage: _launched_
  - PoA Engine: `clique`
  - Epoch interval: `30000`
  - Step period: `15`
  - Genesis hash: `0x14c2283285a88fe5fce9bf5c573ab03d6616695d717b12a127188bcacfc743c4`
  - Network ID: `6`
  - Chain ID: `6`
  - Homestead: `0`
- Status Dashboard: https://stats.kotti.goerli.net/
- Block Explorer:
  - http://kottiexplorer.ethernode.io/
- Open RPC Endpoints:
  - https://kotti.ethereumclassic.network
- Gitter: https://gitter.im/goerli/kotti/

Please see [kotti.genesis](geth/kotti.genesis) for a genesis file compatible with Pantheon or Geth.

Please see [kotti.json](parity/kotti.json) for a chain specification compatible with Nethermind or Parity Ethereum.

Please see extract bootnodes from the Parity chain spec if you fail connecting to the network.

### Connecting the clients

All clients supporting the Clique engine (EIP-225) are able to sync with Görli or Kotti.

##### Go-Ethereum

You can connect Geth to Görli by executing `geth --goerli`. [go-ethereum/#18121](https://github.com/ethereum/go-ethereum/pull/18121)

You can connect Multi-Geth to Kotti by executing `geth --kotti`. [multi-geth/#17](https://github.com/ethoxy/multi-geth/pull/17)

##### Parity-Ethereum

Connect to Görli using the Clique engine: `parity --chain goerli` [parity-ethereum#9981](https://github.com/paritytech/parity-ethereum/pull/9981)

Connect to Kotti using the Clique engine: `parity --chain kotti` [parity-ethereum#9981](https://github.com/paritytech/parity-ethereum/pull/9981)

##### Pantheon

Connect to Görli using Pantheon by executing `pantheon --network=goerli`. [pantheon/#717](https://github.com/PegaSysEng/pantheon/pull/717)

##### Nethermind

Connect to Görli by using the provided goerli.cfg included in Nethermind 0.9.1: [nethermind/#234](https://github.com/NethermindEth/nethermind/pull/234)

```
dotnet run --config configs/goerli.cfg
```

##### EthereumJS

Connect to Görli by using the provided state and genesis included in EthereumJS 0.6.1: [ethereumjs-common/#31](https://github.com/ethereumjs/ethereumjs-common/pull/31)

```
./bin/cli.js --network goerli
```

### Contribute

Run a node, [report bugs](https://github.com/goerli/testnet/issues), and join our [Gitter](https://gitter.im/goerli/testnet)!

Donations for development and hosting can be done through our mini-DAO at [`0x6974df01bf293ab9af66127c03aac79b81d494c7`](https://etherscan.io/address/0x6974df01bf293ab9af66127c03aac79b81d494c7). <3

The 2-of-3 multi-signature wallet is controlled by the following parties ([Proof of Twitter](https://twitter.com/5chdn/status/1063851317028954112), [Proof of Github](https://github.com/goerli/pm/blob/master/FINANCE.md)):

- Aidan Hyman (@chainsafeth)
- Afri Schoedon (@5chdn)
- María Paula Fernández (@MPtherealMVP)

Read more about our current open bounties in the [The Görli Testnet Initiative Bounties Announcement](https://dev.to/5chdn/the-grli-testnet-initiative-bounties-announcement-3gp) and check [Gitcoin](https://gitcoin.co/profile/goerli).
