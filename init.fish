function init -a path --on-event init_nvm
  require foreign-env

  if available fenv
    set -q NVM_DIR; or set -gx NVM_DIR $NVM_DIR
    fenv source $NVM_DIR/nvm.sh >/dev/null ^&1
  end

end
