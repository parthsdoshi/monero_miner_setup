echo "Grabbing XMRig"
# wget https://github.com/xmrig/xmrig/releases/download/v6.9.0/xmrig-6.9.0-bionic-x64.tar.gz
wget https://github.com/MoneroOcean/xmrig/releases/download/v6.9.0-mo1/xmrig-v6.9.0-mo1-lin64.tar.gz
echo "Unpacking XMRig"
# tar -xvf xmrig-6.9.0-bionic-x64.tar.gz
tar -xvf xmrig-v6.9.0-mo1-lin64.tar -C xmrig-6.9.0/
echo "Copying config"
cp ./config.json xmrig-6.9.0/config.json
cd xmrig-6.9.0
echo "Starting XMRig with config:"
cat config.json
sudo ./xmrig