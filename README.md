# Görli Testnet
The goerli testnet configuration.

Stage: testnet. Dashboard: https://stats.goerli.net

### Parity Ethereum

Parity Ethereum version available here https://github.com/goerli/parity-goerli/releases/ will do:

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
my personal comment, as posted before

as i see it, in any chain during recent operations some "questions" came up,
and some admins as well as dapp-writers and contract designers might repeat "their specific question" within a "more restrictive" environment with the possibility to learn from seen results, and being able to revert.

