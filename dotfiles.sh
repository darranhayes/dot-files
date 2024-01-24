#!/bin/bash

Help()
{
	echo "Install or remove this repository's dotfiles files"
	echo
	echo "Syntax: $0 [-c|h|l|r] <target-path>"
	echo "Options:"
	echo "c   Copy the files from this repository to the target-path folder."
	echo "h   Display this Help."
	echo "l   Symbolically link the files from this repository to the target-path folder."
	echo "r   Remove the files from the target-path folder."
	echo
}

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
FILES=(".bashrc" ".example.gitconfig.local" ".gitconfig" ".inputrc" ".vimrc" "better-git-branch.sh" "git-prompt.sh" "RefreshEnv.bat")

LinkFiles()
{
	echo "Setting winsymlinks:nativestrict"
	setx MSYS winsymlinks:nativestrict

	echo "Linking files..."
	for file in "${FILES[@]}"; do
		echo "ln -s $SCRIPT_DIR/$file $TARGET/$file"
		ln -s "$SCRIPT_DIR/$file" "$TARGET/$file"
	done
}

CopyFiles()
{
	echo "Copying files..."
	for file in "${FILES[@]}"; do
		echo "cp $SCRIPT_DIR/$file $TARGET/$file"
		cp "$SCRIPT_DIR/$file" "$TARGET/$file"
	done
}

RemoveFiles()
{
	echo "Removing files..."
	for file in "${FILES[@]}"; do
		echo "rm $TARGET/$file"
		rm "$TARGET/$file"
	done
}

while getopts ":chlr" option; do
	case $option in
		c)
			TARGET=$2
			CopyFiles
			exit;;
		h)
			Help
			exit;;
		l)
			TARGET=$2
			LinkFiles
			exit;;
		r)
			TARGET=$2
			RemoveFiles
			exit;;
		\?) # Invalid option
			echo "Error: Invalid option"
			exit;;
	esac
done