# Looking into the Haskell type system
Here are some resources that can help you look into the Haskell type system.
1. If you are not familiar with Haskell (or if it has been a while), maybe check out (some of) the online book [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/chapters)
2. In that book, some of the most relevant chapters may be:
  - [Types and Typeclasses](http://learnyouahaskell.com/types-and-typeclasses)
  - [Making Our Own Typeclasses](http://learnyouahaskell.com/making-our-own-types-and-typeclasses)
3. In the [Haskell 2010 Language Report](https://www.haskell.org/onlinereport/haskell2010/) you can find a whole [chapter](https://www.haskell.org/onlinereport/haskell2010/haskellch6.html) on predefined types and classes.
4. [Hackage](http://hackage.haskell.org/) is Haskells central package archive (similar to Maven Central or npmjs.org).
5. [Hoogle](https://hoogle.haskell.org/) is a Haskell API search engine. It can be highly useful for finding the right builtin functions to use for your experiments.
6. The [Haskell Wiki](https://wiki.haskell.org/Haskell) contains a bunch of information on everything Haskell.

## Also useful
### GHCi
At startup of this workspace, an instance of _GHCi_ (the _Glasgow Haskell Compiler interactive_, a Haskell REPL) started.
The [full documentation](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/ghci.html) of the GHCi is extensive, possibly the most interesting part for this training is the list of [commands](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/ghci.html#ghci-commands) which it supports.
Specifically:
- ```
  :type <expression>
  ```
  will give you the type of that expression.
  So, for example:
  ```
  Prelude> :type True
  True :: Bool
  Prelude> :type "Hello, World!"
  "Hello, World!" :: [Char]
  Prelude> :type greeting
  greeting :: String -> String
  Prelude> :type head
  head :: [a] -> a
  Prelude> :type abs
  abs :: Num a => a -> a
  ```
- ```
  :load <module>
  ```
  allows you to load a module - which may be in a file.
- ```
  :reload
  ```
  allows you to reload and recompile previously imported modules.

### Stack
This project is built using [Stack](https://haskellstack.org/), which is (amoung other things) a build tool and a dependency manager.
It is meant as a replacement for [Cabal](https://www.haskell.org/cabal/) and can even use `.cabal` files for the project management (rather than its own `package.yaml`).