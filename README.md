<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### plugin-nvm
> A nvm wrapper for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)
[![Travis Status](https://img.shields.io/travis/derekstavis/plugin-nvm.svg?style=flat-square)](https://travis-ci.org/derekstavis/plugin-nvm)

<br/>

## Install

```fish
$ omf install nvm
```
**NB** You have to install **nvm** itself separately (the [curl method](https://github.com/creationix/nvm/blob/master/README.md#install-script) works fine under Fish too).


## Usage

```fish
$ nvm --help
```

If you have a custom `$NVM_DIR`, please add the following line to your `~/.config/fish/config.fish`, replacing the path accordingly:

```fish
set -gx NVM_DIR /path/to/nvm
```

Refresh your shell and you are good to go!

```fish
refresh
```

If you have installed nvm using a package manager you need to specify where is been installed, add the following line to  your `~/.config/fish/config.fish`

```fish
set -g nvm_prefix /path/to/nvm
```
In this case, you don't need to set the `NVM_DIR` where the node versions will be installed, by default will be `~/.nvm`, but you can customize it if you want.

**Note** [Brew](https://brew.sh/) users don't have set up it, the plugin auto-detects it and set up the variable accordingly.

# License

[MIT][mit] © [Derek Willian Stavis][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/derekstavis
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[contributors]:   https://github.com/derekstavis/pkg-nvm/graphs/contributors
