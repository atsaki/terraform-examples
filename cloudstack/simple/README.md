IDCFクラウドでTerraformを使用する例です。
vagrant-cloudstackを用いてTerrformがインストールされた環境を構築することができます。

1. 動作に必要なプラグインのインストール

```bash
$ vagrant plugin install vagrant-cloudstack
$ vagrant plugin install dotenv
```

1. .envファイルを作成します

```ruby
CLOUDSTACK_API_KEY          = 'YOUR_API_KEY'
CLOUDSTACK_SECRET_KEY       = 'YOUR_SECRET_KEY'
CLOUDSTACK_PF_IP_ADDRESS_ID = 'IP_ADDRESS_ID'
CLOUDSTACK_SSH_KEYPAIR      = 'KEYPAIR_NAME'
VAGRANT_SSH_USERNAME        = 'root'
VAGRANT_SSH_PRIVATE_KEY     = 'YOUR_SSH_PRIVATE_KEY_PATH'
```

2. boxを作成します

```bash
$ ./prepare_box.sh
```

3. VMを起動します

仮想マシンが起動し、Terraformがインストールされます。

4. Terraformの使用

```vagrant ssh``` コマンドで仮想マシンへログインしてください。/vagrantに
このディレクトリの中身がコピーされているので適宜変更して使用してください。

```bash
$ vagrant ssh
$ cd /vagrant
```

