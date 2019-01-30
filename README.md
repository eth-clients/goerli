# {Görli|Kotti} Testnet
The `--goerli` and `--kotti` testnet configurations. [![Chat on Gitter](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/goerli/testnet)

There are many Ethereum testnets available for experimenting with smart contracts and deploying decentralised applications before going live on the main Ethereum network. However, there is no testnet available that is both widely usable across all client implementations, and robust enough to guarantee consistent availability and high reliability. This is what **Görli** and **Kotti** try to be. Read more on the motivation in the [Testnet Proposal](https://dev.to/5chdn/the-grli-testnet-proposal---a-call-for-participation-58pf)

### Meta data: Görli

- Name: Görli
- Machine-readable name: `goerli`
- Stage: _to be launched_
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
- Status Dashboard: https://stats.goerli.net/
- Block Explorer: https://blockscout.com/eth/goerli/
- Backup Explorer: https://explorer.goerli.net/
- Gitter: https://gitter.im/goerli/testnet/

Please see [goerli.genesis](geth/goerli.genesis) for a genesis file compatible with Pantheon or Geth.

Please see [goerli.json](parity/goerli.json) for a chain specification compatible with Nethermind or Parity Ethereum.

Please see [bootnodes.txt](bootnodes.txt) if you fail connecting to the network.

### Meta data: Kotti (Classic)

- Name: Kotti (Classic)
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
- Gitter: https://gitter.im/goerli/kotti/

Please see [kotti.genesis](geth/kotti.genesis) for a genesis file compatible with Pantheon or Geth.

Please see [kotti.json](parity/kotti.json) for a chain specification compatible with Nethermind or Parity Ethereum.

Please see extract bootnodes from the Parity chain spec if you fail connecting to the network.

### Connecting the clients

All clients supporting the Clique engine (EIP-225) are able to sync with Görli or Kotti.

##### Go-Ethereum

You can connect Geth to Görli using the genesis provided in this repository:

Note on Bootnodes:
You can connect to the bootnodes by copying `./geth/static-nodes.json` into the data directory (commonly .ethereum) and then run the steps below.

```
geth init ./geth/goerli.genesis
geth --networkid 5
```

Don't forget to either specify bootnodes at startup or add them via console, see [bootnodes.txt](bootnodes.txt).

A pull request for Görli is pending at [go-ethereum#18121](https://github.com/ethereum/go-ethereum/pull/18121) which will allow to simply run:

```
make geth
./build/bin/geth --goerli
```

You can also deploy Goerli Geth with Terraform in Google Cloud. Follow [this guide](https://medium.com/chainsafe-systems/deployment-automation-for-goerli-testnet-in-10-minutes-5212cef5542a).


##### Parity-Ethereum (work in progress)

Clique support in Parity Ethereum is still work in progress, but syncing the chain and all other Parity Ethereum features are available: [goerli/parity-goerli](https://github.com/goerli/parity-goerli)

```
git clone https://github.com/goerli/parity-goerli.git
cd parity-goerli/
git checkout clique-v4  # or latest release on https://github.com/goerli/parity-goerli/releases
cargo build --release --features final
```

Connect to Görli using the experimental Clique engine:

```
./target/release/parity --chain goerli
```

##### Pantheon

Connect to Görli using the Geth genesis file and network ID 5:

```
pantheon --genesis=./geth/goerli.genesis --network-id=5
```

##### Nethermind

Connect to Görli by using the provided goerli.cfg included in Nethermind 0.9.1:

```
dotnet run --config configs/goerli.cfg
```

##### EthereumJS

Connect to Görli by using the provided state and genesis included in EthereumJS 0.6.1:

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

Read more about our current open bounties in the [The Görli Testnet Initiative Bounties Announcement](https://dev.to/5chdn/the-grli-testnet-initiative-bounties-announcement-3gp)
