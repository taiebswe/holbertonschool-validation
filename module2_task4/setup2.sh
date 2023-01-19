apt-get update && apt-get install -y hugo make
type_cpu=$(arch)
if [ $type_cpu == "aarch64" ]
then
    type_cpu="arm64"
elif [ $type_cpu == "x86_64" ]
then
    type_cpu="amd64"
fi
if [ ! -f "./hugo_0.109.0_Linux-"$type_cpu".deb" ]
then
    curl -L "https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_0.109.0_linux-"$type_cpu".deb" -o hugo.deb
fi
apt install ./hugo.deb
rm last.deb
make build

