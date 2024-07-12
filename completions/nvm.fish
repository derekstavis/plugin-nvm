set commands help install uninstall use run current ls ls-remote version \
             version-remote deactivate alias unalias reinstall-packages which

function __nvm_complete_ls_remote
  if not test "$__nvm_ls_remote"
    set -g __nvm_ls_remote (fenv source $nvm_prefix/nvm.sh\; nvm_ls_remote\; nvm_ls_remote_iojs)
  end

  printf "%s\n" $__nvm_ls_remote
end

function __nvm_complete_ls
  if not test "$__nvm_ls"
    set -g __nvm_ls (fenv source $nvm_prefix/nvm.sh\; nvm_ls)
  end

  printf "%s\n" $__nvm_ls
end

complete -c nvm -f -d "Node Version Manager"

complete -c nvm -f -n "__fish_seen_subcommand_from install"            -a "(__nvm_complete_ls_remote)"
complete -c nvm -f -n "__fish_seen_subcommand_from uninstall"          -a "(__nvm_complete_ls)"
complete -c nvm -f -n "__fish_seen_subcommand_from use"                -a "(__nvm_complete_ls)"
complete -c nvm -f -n "__fish_seen_subcommand_from which"              -a "(__nvm_complete_ls)"
complete -c nvm -f -n "__fish_seen_subcommand_from reinstall-packages" -a "(__nvm_complete_ls)"
complete -c nvm -f -n "__fish_seen_subcommand_from run"                -a "(__nvm_complete_ls)"

complete -c nvm -f -n "__fish_use_subcommand" -a help               -d "Show help message"
complete -c nvm -f -n "__fish_use_subcommand" -a install -s -s      -d "Download and install a <version>, [-s] from source. Uses .nvmrc if available"
complete -c nvm -f -n "__fish_use_subcommand" -a uninstall          -d "Uninstall a version"
complete -c nvm -f -n "__fish_use_subcommand" -a use -o --silent    -d "Modify PATH to use <version>. Uses .nvmrc if available"
complete -c nvm -f -n "__fish_use_subcommand" -a run                -d "Run <version> with <args> as arguments. Uses .nvmrc if available for <version>"
complete -c nvm -f -n "__fish_use_subcommand" -a current            -d "Display currently activated version"
complete -c nvm -f -n "__fish_use_subcommand" -a ls                 -d "List installed versions"
complete -c nvm -f -n "__fish_use_subcommand" -a ls                 -d "List versions matching a given description"
complete -c nvm -f -n "__fish_use_subcommand" -a ls-remote          -d "List remote versions available for install"
complete -c nvm -f -n "__fish_use_subcommand" -a version            -d "Resolve the given description to a single local version"
complete -c nvm -f -n "__fish_use_subcommand" -a version-remote     -d "Resolve the given description to a single remote version"
complete -c nvm -f -n "__fish_use_subcommand" -a deactivate         -d "Undo effects of nvm on current shell"
complete -c nvm -f -n "__fish_use_subcommand" -a alias              -d "Set an alias named <name> pointing to <version>"
complete -c nvm -f -n "__fish_use_subcommand" -a unalias            -d "Deletes the alias named <name>"
complete -c nvm -f -n "__fish_use_subcommand" -a reinstall-packages -d "Reinstall global npm packages contained in <version> to current version"
complete -c nvm -f -n "__fish_use_subcommand" -a which              -d "Display path to installed node version. Uses .nvmrc if available"
