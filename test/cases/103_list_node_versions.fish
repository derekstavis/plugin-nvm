it_should "list locally installed node versions" "test (nvm ls ^/dev/null | wc -c) -gt 1"
it_should "list remote node versions" "test (nvm ls-remote ^/dev/null | wc -c) -gt 1"
