# SYNOPSIS
#   nvm [options]
#
# USAGE
#   Options
#

function nvm -d "Node version manager"
  if test -e ~/.nvm/nvm.sh
    available fenv;
      and fenv source ~/.nvm/nvm.sh\; nvm $argv
      or echo "You need to install foreign-env plugin"
  else
    echo "You need to install nvm"
  end
end
