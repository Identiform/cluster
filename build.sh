wget https://storage.googleapis.com/golang/go1.10.2.linux-amd64.tar.gz
sudo tar -C /usr/bin -xzf go1.10.2.linux-amd64.tar.gz
echo "export GOPATH=\$HOME/go" >> .bashrc
echo "export GOROOT=/usr/bin/go" >> .bashrc
echo "export PATH=\$PATH:\$GOROOT/bin" >> .bashrc
source ~/.bashrc

go get -u -d github.com/ipfs/go-ipfs
cd $GOPATH/src/github.com/ipfs/go-ipfs
make install

go get -u -d github.com/ipfs/ipfs-cluster
cd $GOPATH/src/github.com/ipfs/ipfs-cluster
make install

ipfs-cluster-service init
