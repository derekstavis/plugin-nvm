function nvm -d "Node version manager"
  if test -e $nvm_prefix/nvm.sh
    if not type -q fenv
      echo "You need to install foreign-env plugin"
      return 1
    end

    fenv source $nvm_prefix/nvm.sh --no-use ';' nvm $argv
  else
    echo "You need to install nvm itself (see https://github.com/creationix/nvm#installation)"
    return 1
  end
end
