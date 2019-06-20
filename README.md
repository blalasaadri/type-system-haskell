# type-system-haskell

This repository is built to be opened in Gitpod.io.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/blalasaadri/type-system-haskell)

## Available commands
Once the Gitpod environment has started, you will have the following custom commands available:
- `build` will compile the current project (equivalent to `stack build`)
- `clean` will delete compiled artifacts (equivalent to `stack clean && rm -rf .stack-work`)
- `run` will run the application (equivalent to `stack run`)
- `run-tests` will run the tests (equivalent to `stack test`)
- `lint` will lint the application (eqivalent to `hlint ${THEIA_WORKSPACE_ROOT:-.}`)
- `repl` will start GHCi, a [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) (equivalent to `stack ghci`)

In addition to these, everything under `$HOME/.local/bin` will be available on the PATH.

## Project structure
In this project, the application logic should lie within the `./src/` directory and the execution entry point should be in `./app/Main.hs`.
(This is the default file structure created by [Stack](https://docs.haskellstack.org/en/stable/README/).
See [this StackOverflow reply](https://stackoverflow.com/a/39070268/2382246) for an explanation.)
All test sources should be within the `./test/` directory.
When compiled (using `build` or `stack build`), the compiled application will be available within the `.stack-work/install/` directory.
If you want to call a specific executable, you may for exaple run a command such as
```shell
stack exec .stack-work/install/x86_64-linux/lts-13.25/8.6.5/bin/type-system-haskell-exe
```

All files which are prefixed with `.gitpod` are intended for the use with Gitpod.io and are, in general, not relevant to the user.
