# SYNOPSIS
#   nvm [options]
#
# USAGE
#   Options
#

function init -a path --on-event init_nvm
  if not available fenv
    omf install foreign-env
  end
end

function nvm -d "My package"
  if test -e ~/.nvm/nvm.sh
    fenv source ~/.nvm/nvm.sh\; nvm $argv
  else
    echo "You need to install nvm"
  end
end
