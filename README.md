# Görli Testnet v0.2
The goerli testnet v0.2 configuration.

Stage: _pre-test testnet v0.2_. Dashboard: http://ethstats.goerli.ethberl.in:3000/

### Go-Ethereum

Source: https://github.com/ethereum/go-ethereum

```
geth --datadir /tmp/goerli/geth init ./geth/goerli.genesis
geth --datadir /tmp/goerli/geth
```

### Parity-Ethereum w/ Clique

Source: https://github.com/jwasinger/parity-ethereum/tree/clique-poa

_This is work in progress and **will most likely fail**._ **WIP**: https://github.com/paritytech/parity-ethereum/pull/9862

```
parity --base-path /tmp/goerli/parity --chain ./parity/goerli.json --reserved-peers ./bootnodes.txt
```

### Pantheon

Source: https://github.com/PegaSysEng/pantheon

```
pantheon --genesis=./geth/goerli.genesis --datadir=/tmp/goerli/pantheon
```
