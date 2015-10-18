function nvm -d "Node version manager"
  if test -e $NVM_DIR/nvm.sh
    if not available fenv
      echo "You need to install foreign-env plugin"
      return 1
    end

    fenv source $NVM_DIR/nvm.sh\; nvm $argv
  else
    echo "You need to install nvm"
    return 1
  end
end
