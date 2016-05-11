hugo -t crisp
git add .
git commit -a -m "commit"
git pull
git push
#git subtree add --prefix=public --squash git@github.com:hongruiqi/hongruiqi.github.io.git master
git subtree push --prefix=public --squash git@github.com:hongruiqi/hongruiqi.github.io.git master
