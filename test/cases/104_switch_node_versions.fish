it_should "install node version" "nvm install v4; nvm install v5"
it_should "set default version" "nvm alias default v4"
it_should "switch node version" "nvm use v5; test (node --version | cut -c2) = 5"
it_should "return the correct node version" "test (node --version = nvm version)"
