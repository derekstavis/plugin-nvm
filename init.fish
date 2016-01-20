function init -a path --on-event init_nvm
  require foreign-env

  if available fenv
    set -q NVM_DIR; or set -gx NVM_DIR ~/.nvm
    set -g nvm_prefix $NVM_DIR

    available brew;
      and test -e (brew --prefix)/Cellar/nvm;
        and set -g nvm_prefix (brew --prefix nvm)

    fenv source $nvm_prefix/nvm.sh >/dev/null ^&1
  end

end
