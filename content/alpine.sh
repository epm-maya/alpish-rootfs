set -ex

echo "build in alpish"

mkdir -p /root
mkdir -p /usr/local/sbin
mkdir -p /usr/local/bin

addgroup -S docker

echo "DONE"
