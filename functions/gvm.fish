function gvm -d "Node version manager"
  if test -e $gvm_prefix/gvm.sh
    if not type -q fenv
      echo "You need to install foreign-env plugin"
      return 1
    end

    fenv source $gvm_prefix/scripts/gvm\; gvm $argv
  else
    echo "You need to install gvm"
    return 1
  end
end
