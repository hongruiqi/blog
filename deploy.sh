git add .
git commit -a -m "update"
git subtree push --prefix=public . gh-pages
git subtree push --prefix=content . contents
git push --all
