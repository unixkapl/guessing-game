touch README.md
echo "" >> README.md
echo "#GuessingGame.sh" >> README.md
echo "" >> README.md
echo "Lines of code:" `<guessinggame.sh wc -l` >> README.md
echo "" >> README.md
echo "Date/Time:" >> README.md
echo `date` >> README.md
echo "" >> README.md
git init
git add README.md
git add makefile.sh
git add guessinggame.sh
git commit -m "first commit"
git remote add origin https://github.com/unixkapl/guessing-game.git
git push -u origin master

