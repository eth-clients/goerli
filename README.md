# Görli Testnet
The goerli testnet configuration.

Stage: testnet. Dashboard: https://stats.goerli.net

### Parity Ethereum

Parity Ethereum version 2.5.13 available here https://github.com/openethereum/openethereum/releases/tag/v2.5.13 will do:

```
parity --chain goerli
```


### OpenEthereum

OpenEthereum version available here https://github.com/openethereum/openethereum/releases

```openethereum --chain goerli```

### Nethermind

Nethermind version available here https://github.com/NethermindEth/nethermind/releases

running ubuntu first enter ```sudo apt-get update && sudo apt-get install libsnappy-dev libc6-dev libc6 unzip``` 
and then deflate Nethermind.

```Nethermind.Runner --config goerli```
or
```Nethermind.Laucher``` from the root of the extracted folder

### Geth 

geth version available here https://geth.ethereum.org/downloads/

```geth --goerli console```

all my respect goes out to the dev-studios out there, working on excellent code,
willing to be tested by people like me; we work on the same idea-
the more critical and excellence-oriented we work, the faster we will see and get results.

test-eth for goerli on demand (: or further questions?

visit https://gitter.im/goerli/testnet for requesting
