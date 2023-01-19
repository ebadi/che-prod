#/bin/bash
rm -rf /tmp/chedoku-test
git clone git@github.com:ebadi/che-test.git  /tmp/chedoku-test
rsync -avh --progress . /tmp/chedoku-test --exclude .git --delete
cd /tmp/chedoku-test
rm -rf tools
rm -rf *.sh
git add /tmp/chedoku-test
git commit -m "update web"
cd /tmp/chedoku-test ; git push
echo "wait for 2min and try https://ebadi.github.io/che-test "
echo "see progress here https://github.com/ebadi/che-test"


