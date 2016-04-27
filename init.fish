function init -a path --on-event init_gvm
  if type -q fenv
    set -q GVM_DIR; or set -gx GVM_DIR ~/.gvm
    set -g gvm_prefix $GVM_DIR

    fenv source $nvm_prefix/scripts/gvm >/dev/null ^&1
  end

end
