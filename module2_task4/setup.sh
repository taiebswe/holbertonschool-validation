curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugo.deb
apt install ./hugo.deb
rm hugo.deb
wget https://nodejs.org/download/release/v14.21.2/node-v14.21.2-linux-x64.tar.xz && tar -xf node-v14.21.2-linux-x64.tar.xz 
cp node-v14.21.2-linux-x64/bin/node /usr/bin/node && cp node-v14.21.2-linux-x64/bin/npm /usr/bin/npm && npm install -g markdownlint-cli
curl -L https://www.npmjs.com/install.sh | sh
npm install -g markdown-link-check
git clone https://github.com/holbertonschool/W3C-Validator.git && cp W3C-Validator/w3c_validator.py . && rm -Rf W3C-Validator
pip3 install requests
make build