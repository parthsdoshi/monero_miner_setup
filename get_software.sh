echo "Updating system resource pointers"
sudo apt update
echo "Installing node"
sudo apt install -y nodejs

echo "Grabbing multi-miner"
wget https://raw.githubusercontent.com/MoneroOcean/meta-miner/master/mm.js
chmod +x mm.js

echo "Grabbing XMRig"
wget https://github.com/xmrig/xmrig/releases/download/v6.9.0/xmrig-6.9.0-bionic-x64.tar.gz
echo "Unpacking XMRig"
tar -xvf xmrig-6.9.0-bionic-x64.tar.gz

echo "Copying files"
cp ./config.json xmrig-6.9.0/
cp ./mm.js xmrig-6.9.0/
cd xmrig-6.9.0

echo "Starting with config:"
cat config.json

sudo node mm.js -p=gulf.moneroocean.stream:10128 -m "sudo --preserve-env=AZ_BATCH_NODE_ID ./xmrig --config=config.json"
# sudo --preserve-env=AZ_BATCH_NODE_ID ./xmrig