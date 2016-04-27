set commands help install uninstall use list listall version \
             alias linkthis pkgset pkgenv

function __gvm_complete_listall
  if not test "$__gvm_listall"
    set -g __gvm_listall (fenv source ~/.gvm/scripts/gvm\; gvm_listall)
  end

  printf "%s\n" $__gvm_listall
end

function __gvm_complete_list
  if not test "$__gvm_list"
    set -g __gvm_list (fenv source ~/.gvm/scripts/gvm\; gvm_list)
  end

  printf "%s\n" $__gvm_list
end

complete -c gvm -f -d "Go Version Manager"

complete -c gvm -f -n "__fish_seen_subcommand_from install"            -a "(__gvm_complete_ls_remote)"
complete -c gvm -f -n "__fish_seen_subcommand_from uninstall"          -a "(__gvm_complete_ls)"
complete -c gvm -f -n "__fish_seen_subcommand_from use"                -a "(__gvm_complete_ls)"

complete -c gvm -f -n "__fish_use_subcommand" -a help               -d "Show help message"
complete -c gvm -f -n "__fish_use_subcommand" -a install            -d "Download and install a <version>"
complete -c gvm -f -n "__fish_use_subcommand" -a uninstall          -d "Uninstall a version"
complete -c gvm -f -n "__fish_use_subcommand" -a use                -d "Modify PATH to use <version>"
complete -c gvm -f -n "__fish_use_subcommand" -a list               -d "List installed versions"
complete -c gvm -f -n "__fish_use_subcommand" -a listall            -d "List remote versions available for install"
complete -c gvm -f -n "__fish_use_subcommand" -a version            -d "Resolve the given description to a single local version"
complete -c gvm -f -n "__fish_use_subcommand" -a alias              -d "Set an alias named <name> pointing to <version>"
