# Görli Testnet
The goerli testnet configuration.

Stage: ETH1-testnet. PoA, clique-consensus, 
Start: goerlicon, Berlin

Dashboard: https://stats.goerli.net

clique.getSignersAnnotated()

### Hyperledger Besu

Besu version available here https://pegasys.tech/solutions/hyperledger-besu/

Besu requires Java 11+ to compile. Earlier versions are not supported.

```besu --network=goerli```
more detailled description and good starting point for further research

``https://besu.hyperledger.org/en/stable/HowTo/Get-Started/Starting-node/#run-a-node-on-goerli-testnet``
### Parity Ethereum

Parity Ethereum version 2.5.13 available here https://github.com/openethereum/openethereum/releases/tag/v2.5.13 will do:

```
parity --chain goerli
```

### OpenEthereum

OpenEthereum version available here https://github.com/openethereum/openethereum/releases

```openethereum --chain goerli```

### CoreGeth

Coregeth available here https://github.com/etclabscore/core-geth/releases

```geth --chain goerli```

### Nethermind

Nethermind version available here https://github.com/NethermindEth/nethermind/releases

running ubuntu first enter ```sudo apt-get update && sudo apt-get install libsnappy-dev libc6-dev libc6 unzip``` 
and then deflate Nethermind.

```Nethermind.Runner --config goerli```
or

```Nethermind.Laucher``` from the root of the extracted folder

### Geth/go-ethereum 

geth version available here https://geth.ethereum.org/downloads/

```geth --goerli```

### EthereumJS

Connect to Görli by using the provided state and genesis included in EthereumJS 0.6.1: https://github.com/ethereumjs/ethereumjs-common/releases

```./bin/cli.js --network goerli```


all my respect goes out to the dev-studios out there, working on excellent code,
willing to be tested by people like me; we work on the same idea-
the more critical and excellence-oriented we work, the faster we will see and get results.

test-eth for goerli on demand (: or further questions?

visit https://gitter.im/goerli/testnet for requesting/connecting, you are welcome
