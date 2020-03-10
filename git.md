# git basic user guide
## init workcopy environment
- mkdir [DIR]
- cd [DIR]
- git init
- git clone [URL]
## workcopy to stage
- add/rm
- checkout
## stage to HEAD
- commit
- reset
## HEAD to remote reposition
- push
- pull
## get specified version file
- git log [FILE]
- git checkout [version] [FILE]
## reset to specified version file
- git log [FILE]
- git checkout [version] [FILE]
- git add
- git commit

# create a new repository on the command line
- echo "# code_piece" >> README.md
- git init
- git add README.md
- git commit -m "first commit"
- git remote add origin https://github.com/xinglongcui/code_piece.git
- git push -u origin master
# push an existing repository from the command line
- git remote add origin https://github.com/xinglongcui/code_piece.git
- git push -u origin master

# rename files in in repository
- git mv [OLD_FILE] [NEW_FILE]
- git add [NEW_FILE]
- git commit -m "log" [NEW_FILE]
- git push 
