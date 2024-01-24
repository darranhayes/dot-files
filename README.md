# My common dot files and shell scripts used for bash, vim, and git

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
> On Windows, symbolic linking (link-dotfiles.sh) requires a local security policy permission to be added:
>
> - Run "Local Security Policies" from Windows Start
> - Local Policies / User Rights Assignment / Create symbolic links
> - Log in again to apply new policy
>
> Alternatively, use copy-dotfiles.sh or copy-dotfiles.bat

## Remove dot-files
The copied files can be removed from your home folder with:

Git-bash
```
./dotfiles.sh -r ~
```
