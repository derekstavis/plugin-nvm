function init -a path --on-event init_nvm
  require foreign-env

  if available fenv
    set -q NVM_DIR; or set -gx NVM_DIR ~/.nvm

    if available brew; and brew ls --version nvm > /dev/null ^&1
      set -g nvm_prefix (brew --prefix nvm)
    else
      set -g nvm_prefix $NVM_DIR
    end

    fenv source $nvm_prefix/nvm.sh >/dev/null ^&1
  end

end
