How does tracking and adding changes make developers' lives easier?

It makes it easy to see what changes were made when and by who. That way if a change doesn't work or needs to be modified, developers can go directly to that change and figure out who and why that change was made.

What is a commit?

A commit is a way to record changes made to the file. It allows a developer to comment on what changes were made and perhaps why those changes were made. 

What are the best practices for commit messages?

Commit messages should begin with a short summary - generally 50 characters or less. It should be like the subject line of an email. This subject line should be capitalized and it shouldn't end with a period. Verb tense should be imperative. The body of the commit message is used to explain what and why. The body should also wrap at 72 characters.

What does the HEAD^ argument mean?

HEAD^ is the last commit. So if you wanted to reset what was just committed you would use 'git reset --soft HEAD^'.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The file starts out as unmodified. The developer then edits this file. The file then enters the modified stage of a git change. The developer then stages the file ("git add [file name]")and the file enters the staged stage of a git change. At this point the developer commits the file ("git commit -m ["commit message"]") and the file enters the committed stage.

Write a handy cheatsheet of the commands you need to commit your changes?

In Sublime - ctrl + s = to save the changes made.
In the command line - git add [name of file being changed]
In the command line - git commit -m "The commit message"

What is a pull request and how do you create and merge one?

A pull request is a way for a developer to submit their code or contributions to a project. To create a pull request, you go to your fork on GitHub. There will be a drop down menu for you to choose what branch you're working with. Below that drop down menu, there is a gray bar that has a 'Pull Request' button at the right of the page. Now at the top of the page GitHub will show you what branch you are making a pull request on. (If you can't find your repo you need to change your URL so that you can access your own repo instead of messing with the devbootcamp repo.) The 'base fork' should be [your username]/[your repo] and the 'base' should be master. Then on the right (after the three dots) the first dropdown should be your fork (not the master). The second drop down ('compare') will be the branch you pushed. When all of this is correct, you can then comment on what you changed and press 'Create pull Request' (or just press 'Create pull Request').
Now to merge changes you click on the pull request that you made and click 'Merge pull request'. Confirm the merge and then to clean up your branches you can delete the extra branch made by pressing the 'Delete branch' button on the right.

Why are pull requests preferred when working with teams?

Pull requests are preferred because they allow you to tell all the other developers you're working with about the changes that you've pushed to a repo on GitHub. It facillitates collaboration because everyone can see all the changes and additions being made to a repo. 
