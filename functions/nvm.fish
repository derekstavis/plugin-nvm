function nvm -d "Node version manager"
  if test -e $nvm_prefix/nvm.sh
    if not type -q fenv
      echo "You need to install foreign-env plugin"
      return 1
    end

    fenv source $nvm_prefix/nvm.sh\; nvm $argv
  else
    echo "You need to install nvm"
    return 1
  end
end
