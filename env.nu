### BEGIN carapace
$env.CARAPACE_BRIDGES = 'bash' # optional
mkdir ~/.cache/carapace
carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
### END carapace

### BEGIN starship
#mkdir ~/.cache/starship
#starship init nu | save -f ~/.cache/starship/init.nu
### END starship

### BEGIN clean output of less
$env.LC_ALL = en_GB.UTF-8
$env.LESS = "-FRX"
chcp 65001 | null
### END clean output of less
