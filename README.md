# Görli Testnet
The goerli testnet configuration.

Stage: testnet. 
Dashboard: https://stats.goerli.net

clique.getSignersAnnotated()

Request complete in 32844940,355μs

[

  "0x000000568b9b5a365eaa767d42e74ed88915c204 (POA)",

  "0x22ea9f6b28db76a7162054c05ed812deb2f519cd (Pantheon)",

  "0x4c2ae482593505f0163cdefc073e81c63cda4107 (Nethermind)",

  "0x8b24eb4e6aae906058242d83e51fb077370c4720 (Infura)",

  "0x9d525e28fe5830ee92d7aa799c4d21590567b595 (roninkaizen)",

  "0xa6dd2974b96e959f2c8930024451a30afec24203 (Ethereum Foundation)",

  "0xd9a5179f091d85051d3c982785efd1455cec8699 (Prysm Labs)",

  "0xe0a2bd4258d2768837baa26a28fe71dc079f84c7 (Parity)"


]

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
