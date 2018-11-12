# Görli Testnet
The goerli testnet configuration. [![Görli Chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/goerli/testnet)

- Stage: _pre-test testnet v0.2_
- Dashboard: https://stats.goerli.net/
- Explorer: https://explorer.goerli.net/
- Gitter: https://gitter.im/goerli/testnet/

### Go-Ethereum

Connect to Görli using the genesis provided in this repository:

```
geth --datadir /tmp/goerli/geth init ./geth/goerli.genesis
geth --datadir /tmp/goerli/geth --networkid 6284
```

### Parity-Ethereum (WIP)

Clique support in Parity Ethereum is still work in Progress.

Source: https://github.com/jwasinger/parity-ethereum/tree/clique-poa

```
git clone -b clique-poa https://github.com/jwasinger/parity-ethereum.git
cd parity-ethereum/
cargo build --release
```

Alternate Source: https://github.com/thefallentree/parity-ethereum/tree/clique

```
git clone -b clique https://github.com/thefallentree/parity-ethereum.git
cd parity-ethereum/
cargo build --release
```

Connect to Görli using the Clique engine from one of the two builds above:

```
./target/release/parity --base-path /tmp/goerli/parity --chain ./parity/goerli.json --reserved-peers ./bootnodes.txt
```


### Pantheon

Connect to Görli using the Geth genesis file and network ID 6284:

```
pantheon --genesis=./geth/goerli.genesis --datadir=/tmp/goerli/pantheon --network-id=6284
```

### Nethermind

Connect to Görli by using the provided goerli.cfg included in Nethermind:

```
dotnet run --config configs/goerli.cfg
```
