## FixBid

### Contribution Guide 

1. Clone the repository<br>
    * `git clone https://github.com/lonewol7f/FixBid.git` <br>
    * `cd FixBid`

2. Create a new branch for each new feature <br>
    * `git checkout -b branchName` - This creates the branch and checks it out&nbsp;&nbsp;(Use for creating new branch) <br>
    * `git checkout branchName` - This checks out the branch&nbsp;&nbsp;(Use second time onwards for same branch) <br>
    * Be sure to always check which branch you are on using “git status” before you begin working!

3. Merge your branch <br>
    * After completeing your feature you should merge your branch to main branch <br>
    ```
    git add . 

    git commit -m “message”

    git push origin <branch name> – This creates the branch remotely and pushes to that branch on GitHub    
    ```
    * Go to GitHub and create a new pull request
    * Once someone reviews the pull request. they will resolve any issues or conflicts that come up and approve the pull request to be merged into the main


* Git cheat sheet can be found [here](https://education.github.com/git-cheat-sheet-education.pdf)