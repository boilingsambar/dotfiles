sudo pacman -S archlinux-keyrin
sudo pacman -Syu
sudo pacman -Rs

xmodmap .xmodmap

convert screenshot.jpg -resize 1280x720 screenshot-small.jpg

export EDITOR=/usr/bin/vim
export ENV=$ENV:/home/bin

sudo /opt/lampp/lampp start
sudo /opt/lampp/lampp stop

git config --global user.name "name"
git config --global user.email "email@example.com"

git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=86400'

git config user.name "name"
git config user.email "email@example.com"
git add
git commit -a -m "Commit message"
git commit -m "Commit message"
git push origin master
git pull origin master

sudo systemctl start service
sudo systemctl stop service
sudo systemctl restart service

sudo mount -o loop /path/to/.iso /dir/to/mnt

npm install -g csslint
