<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### touchrunner
> Run tasks from the touchbar

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>


## Installing

```fish
$ omf install touchrunner
```

## What will you get

![Touchrunner demo](touchrunner.gif "Touchrunner demo")

## Requirements

1. Have **Oh My Fish** installed. For more information, check [here](https://github.com/oh-my-fish/oh-my-fish#installation).
1. Be using **iTerm2**, for Touch Bar support.

## Usage

1. Edit the Touch Bar (View -> Customize Touch Bar) to have only "Function keys" block.
1. Enter a directory with a `package.json` and the tasks will appear at the touch bar.
1. Exitting the directory makes the Touch Bar be restored to function keys.

## Configuration

By default touchrunner will use `npm run`. If you want to switch the task
runner, you can override via `touchrunner_command` global variable, eg.:

```fish
set -g touchrunner_command yarn
```

# License

[MIT][mit] © [Derek Stavis][author]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/derekstavis
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
