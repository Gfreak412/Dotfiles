#Config 

**`git config user.name`
`git config user.email
`git init`**

#Status

`git status` 

![[Pasted image 20230530152714.png]]

#Shorthand_Status

`git status -s`

![[Pasted image 20230530155456.png]]

#Create 

To Create an empty file -

`touch <file>.extn` 

like .html or .py or .cpp

#Staging

`git add <FILE>`
**`git add -A`**

#Commit

`git commit <FILE>`
`git commit -a -m "<SKIP STAGING AREA>"`  [Not very recommended]
**`git commit -m "MESSAGE"`**

#gitignore

`touch .gitignore`
`*.log` [Ignores all the files with this ext.]
`log/` ['/' this tells git that it's a directory, & to ignore it]

#git_diff

Shows difference between working directory and stage
`git diff`

To see diff between stage and the last commit
`git diff --staged`

#Restoring

`git restore <FILE>`
`git restore -f`

#Logs

`git log -p -<no. of last commits to see>`

#Removing

`git restore --staged <FILE>`  [Remove from Stage, Make it untracked]
`git rm <FILE>` [Remove from HDD as well as git]

#Branch

`git branch <branch name>` [creates a branch]
`git checkout <branch name>` [switches to the branch]
`git checkout -b <branch name>` [creates a new branch and also switches to it]

#Merge

switch to the branch 
`git merge <some other branch>` [present branch and selected branch gets merged]

``


