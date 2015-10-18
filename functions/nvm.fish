# SYNOPSIS
#   nvm [options]
#
# USAGE
#   Options
#

function nvm -d "Node version manager"
  if test -e $NVM_DIR/nvm.sh
    available fenv;
      and fenv source $NVM_DIR/nvm.sh\; nvm $argv
      or echo "You need to install foreign-env plugin"
  else
    echo "You need to install nvm"
  end
end
