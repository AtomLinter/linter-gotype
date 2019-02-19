linter-gotype
=========================

This linter plugin for [Linter](https://github.com/AtomLinter/Linter) provides an interface to [gotype](https://godoc.org/golang.org/x/tools/cmd/gotype) tool. It will be used with files that have the `Go` syntax.

## Installation
Linter package must be installed in order to use this plugin. If Linter is not installed, please follow the instructions [here](https://github.com/AtomLinter/Linter).

### Plugin installation
```
$ apm install linter-gotype
```

## Settings
Settings can be configured from Atom's settings page in the packages section.

Available settings are:
* **gotype Executable Path**: The _full_ path to `gotype`, for example `$HOME/go/bin/gotype`. Leave at the default to use the system `$PATH` to find it
* **Report All Errors**: Report all gotype errors (not just the first 10)
* **Verbose Mode**: Verbose mode for `gotype` command

Run `which gotype` to find the path, if you cant find it and you are sure you have installed it via `go get -u golang.org/x/tools/cmd/gotype` you can check your home directory and look for a `go\bin` directory.

## Contributing
If you would like to contribute enhancements or fixes, please do the following:

1. Fork the plugin repository.
1. Hack on a separate topic branch created from the latest `master`.
1. Commit and push the topic branch.
1. Make a pull request.
1. welcome to the club

Please note that modifications should follow these coding guidelines:

- Indent is 2 spaces.
- Code should pass coffeelint linter.
- Vertical whitespace helps readability, don’t be afraid to use it.

Thank you for helping out!
