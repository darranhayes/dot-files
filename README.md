# My common configuration files for bash, git, and vim

## Setup dot-files
Clone this repo:

```
git clone https://github.com/darranhayes/dot-files.git
```

From the dot-files folder, run one of the following scripts:

Git-bash
```
./dotfiles.sh -c ~ # to copy the files directly to the user folder
./dotfiles.sh -l ~ # to symbolically link from the repository files to the user folder
```

> [!NOTE]
> On Windows, the symbolic linking option (-l) requires a local security policy permission to be added before running the dotfiles.sh script:
>
> - Run "Local Security Policy" as Administrator 
> - Local Policies / User Rights Assignment / Create symbolic links
> - Log in again to apply new policy

## Remove dot-files
The copied files can be removed from your home folder with:

Git-bash
```
./dotfiles.sh -r ~
```
