Ten steps to dotFiles
=====================

Make directory for dotfiles

	$ mkdir ~/.dotfiles
	
Created a repository without a Working Tree. 

	$ git init --bare $HOME/.dotfiles
	
Create Aliases for your dotfiles command

	$ echo $'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> ~/.zprofile

Update your session to new settings

	$ source ~/.zprofile # or $ . ~/.zprofile
	
Ignore the untracked files in the current repository

	$ dotfiles config status.showUntrackedFiles no

Create an empty repository https://github.com/user/repo.git

	# What are you waiting for? Go create it
	
Adding a remote repository

	$ dotfiles remote add origin https://github.com/user/repo.git
	
Add file contents to the index

	$ dotfiles add ~/.zprofile
	
Commit your changes

	$ dotfiles commit -m "first commit"

Check your change (optional)

	$ dotfiles status
	
Push your change

	$ dotfiles push -u origin master
	
Congratulations you made it

	# dotfiles pull #ecc.
	
	# git clone --bare https://github.com/user/repo.git
	# dotfiles config status.showUntrackedFiles no
