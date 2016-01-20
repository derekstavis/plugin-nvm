it_should "install node v4" "nvm install v4; and nvm use v4"
it_should "have switched to node v4" "test (node --version | cut -c2) = 4"
