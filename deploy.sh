npm run lint
npm run build
echo "-----------------------------------\nVue project compiled\n-----------------------------------"
git add .
echo "Git Commit Message: "
read msg
git commit -m "$msg"
git push --set-upstream origin master


clear

echo "-----------------------------------\nPushed project to repo\n-----------------------------------"


cd dist
git init
git add .
git commit -m "$msg"
git push --set-upstream https://github.com/lmaosoggypancakes/lmaosoggypancakes.github.io gh-pages --force
rm -rf .git
