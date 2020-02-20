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
and some admins as well as dapp-writers and contract designers might repeat "their specific question" within a "more restrictive" environment with the possibility to learn from seen results, and being able to correct or simplify.

Sometimes i post here some updated static-nodes.json files or some dumps of seen and used functional nodes,
it also helps to work on cascaded networks.

I have students learning from my experiences,
feel free to donate, my adress is public. As i receive named donations i will 
be able to progress my work with them easier ways to establish knowledge and interest about ethereum.

yours

ronin-kaizen
14.09.2019, 19.12cest

PS: all my respect goes out to the dev-studios out there, working on excellent code,
willing to be tested by people like me; we work on the same idea-
the more critical and excellence-oriented we work, the faster we will see and get results.
