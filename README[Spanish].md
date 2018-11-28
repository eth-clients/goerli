# Görli Testnet
Configuración para la testnet `--goerli` . [![Görli Chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/goerli/testnet)

Hay muchas testnets Ethereum disponibles para realizar pruebas con contratos inteligentes y desplegar aplicaciones descentralizadas antes de su puesta en marcha en la red principal de Ethereum. Sin embargo, no hay ninguna red de prueba disponible que sea ampliamente utilizable en todas las implementaciones de los clientes y lo suficientemente robusta como para garantizar una disponibilidad consistente y una alta fiabilidad. Esto es lo que Görli intenta ser. Lea más sobre la [Propuesta para la Testnet de Görli](https://dev.to/5chdn/the-grli-testnet-proposal---a-call-for-participation-58pf)

### Meta data

La testnet actual de Görli debe ser considerada como pre-testnet v0.2, está programada con el motor Clique, puede fallar en cualquier momento.

- Name: Görli
- Machine readable name: `goerli`
- Stage: _pre-testnet_
  - PoA Engine: `clique`
  - Epoch interval: `30000`
  - Step period: `15`
  - Genesis hash: `0xfa57319d09fd8a32faaf18d338c8a925a5a7975285bf29ecd024e083cba8abb1`
  - Network ID: `6284`
  - Chain ID: `6284`
  - Homestead: `0`
  - Byzantium: `0`
  - Constantinople: `0`
- Status Dashboard: https://stats.goerli.net/
- Backup Dashboard: http://ethstats.goerli.ethberl.in:3000/
- Block Explorer: https://blockscout.com/eth/goerli/
- Backup Explorer: https://explorer.goerli.net/
- Gitter: https://gitter.im/goerli/testnet/

Por favor vea [goerli.genesis](geth/goerli.genesis) para el archivo génesis compatible con Pantheon o Geth.

Por favor vea [goerli.json](parity/goerli.json) para una especificación compatible con Nethermind o Parity Ethereum.

Por favor vea [bootnodes.txt](bootnodes.txt) si falla al conectarse a la red.

### Conectando los clientes

Todos los clientes que soportan el motor Clique (EIP-225) pueden sincronizar con Görli.

##### Go-Ethereum

Se puede conetar Geth a Görli usando el génesis proprocionado en este repositorio:
Nota para los Bootnodes: Puede conectarse a los bootnodes copiando `./geth/static-nodes.json` en el directorio de datos (por defecto .ethereum) y luego ejecutar los pasos siguientes.

```
geth init ./geth/goerli.genesis
geth --networkid 6284
```

No olvide especificar los _bootnodes_ al inicio o añadirlos desde la consola, vea [bootnodes.txt](bootnodes.txt).

El Pull request para Görli está pendiente en [go-ethereum#18121](https://github.com/ethereum/go-ethereum/pull/18121) que permitirá ejecutar:

```
make geth
./build/bin/geth --goerli
```

##### Parity-Ethereum (en desarrollo)

El soporte para Clique en Parity Ethereum todavía está en proceso, pero la sincronización de la blockchain y las demás funciones de Parity Ethereum están disponibles: [goerli/parity-goerli](https://github.com/goerli/parity-goerli)

```
git clone https://github.com/goerli/parity-goerli.git
cd parity-goerli/
git checkout clique-v2  # or latest release on https://github.com/goerli/parity-goerli/releases
cargo build --release --features final
```

Para conectar con Görli, utilizando el motor experimental Clique:

```
./target/release/parity --chain goerli
```

##### Pantheon

Para conectarse a Görli utilice el archivo génesis de Geth y el ID 6284:

```
pantheon --genesis=./geth/goerli.genesis --network-id=6284
```

##### Nethermind

Para conectarse a Görli, utilice el archivo `goerli.cfg` incluido en Nethermind 0.9.1:

```
dotnet run --config configs/goerli.cfg
```

### Colaborar

Ejecute un nodo, [reporte errores](https://github.com/goerli/testnet/issues), y únete a nuestro [Gitter](https://gitter.im/goerli/testnet)!

Las donaciones para el desarrollo y el alojamiento se pueden hacer desde nuestro mini-DAO en: [`0x6974df01bf293ab9af66127c03aac79b81d494c7`](https://etherscan.io/address/0x6974df01bf293ab9af66127c03aac79b81d494c7). <3

2-de-3 multi-signature wallet están controladas por las siguientes partes ([Proof of Twitter](https://twitter.com/5chdn/status/1063851317028954112), [Proof of Github](https://github.com/goerli/pm/blob/master/FINANCE.md)):

- Aidan Hyman (@chainsafe)
- Afri Schoedon (@5chdn)
- María Paula Fernández (@MPtherealMVP)

Las recompensas por servicios y desarrollo estarán disponibles y se anunciarán pronto.
