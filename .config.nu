def install_plugin [plugin_name: string, git_repository_url?: string, git_tag?: string] {
    mut cargo_install_flags = {}

    # Git repository URL defaults to Nushell repository.
    if ($git_repository_url == null) {
        $cargo_install_flags = ($cargo_install_flags | insert "--git" "https://github.com/nushell/nushell.git")
    } else {
        $cargo_install_flags = ($cargo_install_flags | insert "--git" $git_repository_url)
    }

    # If the repository URL is the Nushell repository, the tag defaults to
    # the current Nushell version.
    if $git_tag != null and $git_tag != "" {
        $cargo_install_flags = ($cargo_install_flags | insert "--tag" $git_tag)
    } else if ($cargo_install_flags | get "--git") == "https://github.com/nushell/nushell.git" {
        $cargo_install_flags = ($cargo_install_flags | insert "--tag" (version | get version))
    }

    let flags = ($cargo_install_flags | items {|key, value| echo $'($key) ($value)' } | str join " ")
    nu -c $"cargo install ($flags) nu_plugin_($plugin_name)";

    const home_directory = ("~" | path expand)
    let cargo_bin_directory = $"($home_directory)/.cargo/bin"
    mut plugin_path = $"($cargo_bin_directory)/nu_plugin_($plugin_name)"
    if (sys).host.name == "Windows" {
        $plugin_path += ".exe"
    }
    nu -c $"register ($plugin_path)"
}

### BEGIN oh-my-post
source ~\Src\clones\nu_scripts\modules\prompt\oh-my.nu
$env.PROMPT_COMMAND = { (git_prompt).left_prompt }
$env.PROMPT_COMMAND_RIGHT = "" # { (git_prompt).right_prompt }
$env.PROMPT_INDICATOR = " "
### END oh-my-post

source ~\.cache\carapace\init.nu

source ~\Src\clones\nu_scripts\custom-completions\git\git-completions.nu
source ~\Src\clones\nu_scripts\modules\git\git_branch_age.nu
source ~\Src\clones\nu_scripts\modules\random-list\random-list.nu
source ~\Src\clones\nu_scripts\modules\maths\math_functions.nu

### BEGIN defer until bugs fixed
# source ~\Src\clones\nu_scripts\modules\to-json-schema\to-json-schema.nu
### END defer until bugs fixed
