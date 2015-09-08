# SYNOPSIS
#   nvm [options]
#
# USAGE
#   Options
#

function init -a path --on-event init_nvm
  if not available 'fenv'
    omf install foreign-env
  end

  if not test -e ~/.nvm/nvm.sh
    if available wget
        echo "Installing nvm..."
        wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash
    else if available curl
        echo "Installing nvm..."
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash
    else
        echo "You need to install nvm"
    end
  end
end

function nvm -d "My package"
  fenv source ~/.nvm/nvm.sh\; nvm $argv
end
