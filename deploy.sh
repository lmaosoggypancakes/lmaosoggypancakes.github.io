git add .
echo "Git Commit Message: "
read msg
git commit -m "$msg"
git push --set-upstream origin master


clear

echo "-----------------------------------\nPushed project to repo\n-----------------------------------"