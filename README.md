# fish-ssh-agent

Utility functions to start your ssh agent when using fish shell. Rewritten for
compatibility with macOS `/usr/bin/ssh-agent` and its Keychain integration.

You do not need to manually run `ssh-add` or type in your password, after the
first time loading them with `ssh-add --apple-use-keychain`. Also fixes some
bugs I was encountering where the `ssh-agent` got unloaded or was unnecessarily
spawned anew.

## Installation

### Using [fundle](https://github.com/danhper/fundle)

Add

```fish
fundle plugin 'riley-martine/fish-ssh-agent'
```

to your `config.fish`, reload your shell and run `fundle install`.

### Using [Fisher](https://github.com/jorgebucaran/fisher)

```shell
fisher install riley-martine/fish-ssh-agent
```

### Manually

Copy `functions` and `conf.d` to your `$__fish_config_dir` directory. That's all.
