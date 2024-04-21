# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.ts
```

RC721Aのインストール
```shell
npm install erc721a
```

デプロイを実行
VSCodeのターミナルから以下のコマンドを実行
```
npx hardhat ignition deploy ./ignition/modules/WaveHack.ts --network sepolia --deployment-id sepolia-deployment 
```

4.3. Verify & Publish
以下のコマンドを実行して、Ethereum上にデプロイされたコードの検証と公開を行う。
```
npx hardhat ignition verify sepolia-deployment
```
以下が出力されると検証&公開が完了
```
(base) IT-06261-M:erc721-contracts 0xpokotaro$ npx hardhat ignition verify sepolia-deployment
Verifying contract "contracts/WaveHack.sol:WaveHack" for network sepolia...
Successfully verified contract "contracts/WaveHack.sol:WaveHack" for network sepolia:
  - https://sepolia.etherscan.io/address/0xBb50cec7998FF27010a79158D252b069775342a1#code
```

# ディレクトリ構成
```
erc721-contracts/
 ├ artifacts/        → コンパイル後に出力されたファイルを格納
 ├ cache/            → コンパイル時のキャッシュ
 ├ contracts/        → Solidityのファイルを格納
 ├ ignition/         → スクリプトを格納
 ├ node_modules/
 ├ test/             → テストファイルを格納
 ├ typechain-types/  → TypeScriptの型定義
 ├ .gitignore
 ├ hardhat.config.ts → Hardhatの設定ファイル
 ├ package-lock.json
 ├ package.json
 ├ README.md
 └ tsconfig.json
```
