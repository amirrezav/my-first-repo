make README.md 

pwd | sed 's#.*/##' >> README.md
date >> README.md
wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
