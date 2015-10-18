it_should "display help using nvm --help" "test (nvm --help ^&1 | wc -c) -gt 1"
it_should "display help using nvm with no arguments" "test (nvm ^&1 | wc -c) -gt 1"
