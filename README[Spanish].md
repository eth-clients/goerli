# {Görli|Kotti} Testnet

Las configuraciones para las redes de prueba entre clientes de `--goerli` y `--kotti`. [![Chat on Gitter](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/goerli/testnet)

- https://goerli.net

Hay muchas testnets Ethereum disponibles para realizar pruebas con contratos inteligentes y desplegar aplicaciones descentralizadas antes de su puesta en marcha en la red principal de Ethereum. Sin embargo, no hay ninguna red de prueba disponible que sea ampliamente utilizable en todas las implementaciones de los clientes y lo suficientemente robusta como para garantizar una disponibilidad consistente y una alta fiabilidad. Esto es lo que Görli intenta ser. Lea más sobre la [Propuesta para la Testnet de Görli](https://dev.to/5chdn/the-grli-testnet-proposal---a-call-for-participation-58pf)

### Meta datos

Ver también: [Getting started with the Görli Testnet](https://mudit.blog/getting-started-goerli-testnet/).

- Nombre: **Görli**
- Nombre legible por la máquina: `goerli`
- Estado: _launched_
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
- Estado del panel de control: 
  - https://stats.goerli.net/
  - https://net.goerli.ethstats.io/
- Explorador de bloques: 
  - https://goerli.etherscan.io/
  - https://goerli.ethstats.io/
  - https://blockscout.com/eth/goerli/
  - https://explorer.goerli.net/
- Faucets:
  - https://bridge.goerli.com/
  - https://faucet.goerli.mudit.blog/
  - https://goerli-faucet.slock.it/
- RPC Endpoints abiertos:
  - http://goerli.blockscout.com
  - http://goerli.prylabs.net
  - https://rpc.goerli.mudit.blog
  - https://rpc.slock.it/goerli
- Gitter: https://gitter.im/goerli/testnet/

Por favor vea [goerli.genesis](geth/goerli.genesis) para el archivo génesis compatible con Pantheon o Geth.

Por favor vea [goerli.json](parity/goerli.json) para una especificación compatible con Nethermind o Parity Ethereum.

Por favor vea [bootnodes.txt](bootnodes.txt) si falla al conectarse a la red.

### Meta datos: Kotti (Classic)

- Nombre: **Kotti** (Classic)
- Nombre legible por la máquina: `kotti`
- Estado: _launched_
  - PoA Engine: `clique`
  - Epoch interval: `30000`
  - Step period: `15`
  - Genesis hash: `0x14c2283285a88fe5fce9bf5c573ab03d6616695d717b12a127188bcacfc743c4`
  - Network ID: `6`
  - Chain ID: `6`
  - Homestead: `0`
- Estado del panel de control: https://stats.kotti.goerli.net/
- Explorador de bloques:
  - http://kottiexplorer.ethernode.io/home
- RPC Endpoints abiertos:
  - https://kotti.ethereumclassic.network
- Gitter: https://gitter.im/goerli/kotti/

Por favor vea [kotti.genesis](geth/kotti.genesis) para el archivo génesis compatible con Pantheon o Geth.

Por favor vea [kotti.json](parity/kotti.json) para una especificación compatible con Nethermind o Parity Ethereum.

Por favor vea extraer bootnodes de la especificación de la cadena de Parity  si no consigue conectarse a la red.

### Conectando los clientes

Todos los clientes que soportan el motor Clique (EIP-225) pueden sincronizar con Görli o Kotti.

##### Go-Ethereum

Puede conectar Geth a Görli ejecutando `geth --goerli`. [go-ethereum/#18121](https://github.com/ethereum/go-ethereum/pull/18121)

Puede conectar Multi-Geth a Kotti ejecutando `geth --kotti`. [multi-geth/#17](https://github.com/ethoxy/multi-geth/pull/17)

##### Parity-Ethereum

Conéctese a Görli usando el motor Clique: `parity --chain goerli` [parity-ethereum#9981](https://github.com/paritytech/parity-ethereum/pull/9981)

Conéctese a Kotti usando el motor Clique: `parity --chain kotti` [parity-ethereum#9981](https://github.com/paritytech/parity-ethereum/pull/9981)

##### Pantheon

Conéctese a Görli usando Pantheon ejecutando: `pantheon --network=goerli`. [pantheon/#717](https://github.com/PegaSysEng/pantheon/pull/717)

##### Nethermind

Conéctese a Görli usando el archivo goerli.cfg incluido en Nethermind 0.9.1: [nethermind/#234](https://github.com/NethermindEth/nethermind/pull/234)

```
dotnet run --config configs/goerli.cfg
```

##### EthereumJS

Conéctese a Görli utilizando el estado y el génesis incluidos en EthereumJS 0.6.1: [ethereumjs-common/#31](https://github.com/ethereumjs/ethereumjs-common/pull/31)

```
./bin/cli.js --network goerli
```

### Colaboración

Ejecute un nodo, [reporte fallos](https://github.com/goerli/testnet/issues), y únase a nuestro [Gitter](https://gitter.im/goerli/testnet)!

Las donaciones para el desarrollo y el alojamiento se pueden hacer desde nuestro mini-DAO en: [`0x6974df01bf293ab9af66127c03aac79b81d494c7`](https://etherscan.io/address/0x6974df01bf293ab9af66127c03aac79b81d494c7). <3

2 de las 3 wallet multifirmas están controladas por las siguientes partes ([Proof of Twitter](https://twitter.com/5chdn/status/1063851317028954112), [Proof of Github](https://github.com/goerli/pm/blob/master/FINANCE.md)):

- Aidan Hyman (@chainsafeth)
- Afri Schoedon (@5chdn)
- María Paula Fernández (@MPtherealMVP)

Lea más sobre nuestras recompensas actualmente abiertas en el [comunicado de recompensas de la Iniciativa Testnet de Görli](https://dev.to/5chdn/the-grli-testnet-initiative-bounties-announcement-3gp) y revise [Gitcoin](https://gitcoin.co/profile/goerli).
