<img src="https://dl.dropboxusercontent.com/u/56336/omf/omf-logo-optimised.svg" align="left" width="144px" height="144px"/>

#### plugin-gvm
> A gvm wrapper for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)
<!-- [![Travis Status](https://img.shields.io/travis/derekstavis/plugin-nvm.svg?style=flat-square)](https://travis-ci.org/derekstavis/plugin-nvm) -->

<br/>

## Install

```fish
$ omf install https://github.com/maman/plugin-gvm
```


## Usage

```fish
$ gvm --help
```

If you have a custom `$NVM_DIR`, please add the following line to your `~/.config/fish/config.fish`, replacing the path accordingly:

```fish
set -gx GVM_DIR /path/to/gvm
```

Refresh your shell and you are good to go!

```fish
refresh
```

# License

[MIT][mit] © [Derek Stavis][author], ported to gvm by [Achmad Mahardi][maman] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/derekstavis
[maman]:          http://github.com/maman
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[contributors]:   https://github.com/maman/plugin-gvm/graphs/contributors
