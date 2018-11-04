# Görli Testnet v0.2
The goerli testnet v0.2 configuration.

Stage: pre-test testnet v0.2. Dashboard: http://ethstats.goerli.ethberl.in:3000/

### Parity-Ethereum w/ Clique

Source: https://github.com/jwasinger/parity-ethereum/tree/clique-poa/

_This is work in progress and will most likely fail._

```
parity --chain ./parity/goerli.json --reserved-peers ./bootnodes.txt
```

**WIP**: https://github.com/paritytech/parity-ethereum/pull/9862

### Go-Ethereum

Source: https://github.com/ethereum/go-ethereum

```
geth --datadir /tmp/goerli/geth init ./geth/goerli.genesis
geth --datadir /tmp/goerli/geth
```

### Pantheon

Source:

```
pantheon --genesis=./geth/goerli.genesis --datadir=/tmp/goerli/pantheon
```
