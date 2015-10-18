<img src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png" align="left" width="144px" height="144px"/>

#### plugin-nvm
> A nvm wrapper for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE.md)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Install

```fish
$ omf install nvm
```


## Usage

```fish
$ nvm --help
```

If you have a custom `$NVM_DIR`, please add the following line to your `~/.config/fish/config.fish`, replacing the path accordingly:

```fish
set -gx NVM_PATH /path/to/nvm
```

Refresh your shell and you are good to go!

```fish
refresh
```

# License

[MIT][mit] © [Derek Willian Stavis][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/derekstavis
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[contributors]:   https://github.com/derekstavis/pkg-nvm/graphs/contributors
