VERSION="0.7.1"
ARCH="amd64"

ZIP="packer_${VERSION}_linux_${ARCH}.zip"
ROOT_DIR=$(pwd)

if [ ! -f $ZIP ]; then
    wget https://dl.bintray.com/mitchellh/packer/$ZIP
fi

rm -Rf debian_root

mkdir -p debian_root/usr/bin
mkdir -p debian_root/usr/lib/packer

cd debian_root/usr/lib/packer
unzip ../../../../$ZIP

cd ../../bin
ln -s ../lib/packer/packer packer

cd $ROOT_DIR/debian_root

fpm -s dir -t deb --version $VERSION --url 'http://www.packer.io' --maintainer 'Tomasz Setkowski tom@ai-traders.com' --vendor 'hashicorp' --license 'MPL2' --category misc --name packer . 

mv packer*.deb ../