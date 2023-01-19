#/bin/bash


git clone git@github.com:ebadi/che-prod.git  /tmp/chedoku-prod
rsync -avh --progress . /tmp/chedoku-prod --exclude .git --delete
cd /tmp/chedoku-prod
rm -rf tools
git add /tmp/chedoku-prod
git commit -m "update web"
cd /tmp/chedoku-prod ; git push
echo "wait for 2min and try http://www.chedoku.com"
echo "see deply progress here https://github.com/ebadi/che-prod"

