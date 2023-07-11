#Add_Repository

`git remote add orgin <URL>` [origin is alias of the repository]

fetch and push URL can be obtained by - 
`git remote -v`

#Getting_Github_Repo_Setup

`ssh-keygen -t rsa -b 4096 -C "kanishk.kumar412@gmail.com"`
`eval $(ssh-agent -s)`
`ssh-add ~/.ssh/id_rsa`
`cat ~/.ssh/id_rsa.pub` [prints the key]

create a new SSH key in GitHub, with the above obtained key.

Set new SSH URL
`git remote set-url origin <SSH URL>`

#Push

Switch to the branch to push
`git push -u <repo name> <branch name>`

git push -u {branch name} [this stores the command after -u for quick use by command `git push`]




