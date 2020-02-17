it_should "list locally installed node versions" "test (nvm ls 2>/dev/null | wc -c) -gt 1"
it_should "list remote node versions" "test (nvm ls-remote 2>/dev/null | wc -c) -gt 1"
