function it_should
  switch "$argv[1]"
  case '-s' '--single'
  case '*'
    if not test (count $argv) -ge 2
      echo 'usage: it_should "do something" "commands"'
      echo '       it_should -s "commands"'
      return 1
    end
    set duty $argv[1]
  end

  set commands $argv[2..-1]
  set -l progress (set_color yellow)TEST(set_color normal)

  set -q duty;
    and printf -- '\n  - It should %s: %s' $duty $progress
    or printf -- "$progress"

  if set output (eval "$commands" 2>&1)
    set_color green
    printf '\b\b\b\bPASS'
    set_color normal
    return 0
  else
    set_color red
    printf '\b\b\b\bFAIL'
    set_color -u
    printf '\n\nError description\n'
    set_color normal
    set_color yellow
    printf -- '%s\n' $output >&2
    echo
    set_color normal
    return 1
  end
end

printf 'Running test suite...\n'

for test in test/cases/*
  printf -- '- It should %s: ' (basename $test | sed 's/^[0-9]*_//;s/_/ /g;s/\.fish//g')
  source $test;
    or exit 1
  echo
end
