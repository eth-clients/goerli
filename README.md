# Görli Testnet
The goerli testnet configuration.

Stage: pre-test testnet. Dashboard: http://ethstats.goerli.ethberl.in:3000/

### Parity Ethereum

Any Parity Ethereum version will do:

```
parity --chain ./parity/goerli.json --reserved-peers ./bootnodes.txt
```

Or use Parity Goerli: https://github.com/goerli/parity-goerli

```
git checkout master
cargo build --release
./target/release/parity --chain goerli
```

### Geth w/ Aura

Source: https://github.com/goerli/go-ethereum-aura

Test locally:

```
git checkout aura-dev
make geth
rm -rf /tmp/goerli
./build/bin/geth --datadir /tmp/goerli init ./geth/goerli.genesis
./build/bin/geth --datadir /tmp/goerli --nodiscover --maxpeers 0 console
```

Or connecting to the network:

```
./build/bin/geth --goerli console
```
