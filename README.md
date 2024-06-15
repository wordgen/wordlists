# wordgen/wordlists

[![badge][badge-url]][pkg-url]

This repository contains a collection of wordlists converted to Go string
slices for easy use in various applications.

## Installation

To install the package, use `go get`:

```shell
go get github.com/wordgen/wordlists
```

## Usage

Import the package in your Go code:

```go
import "github.com/wordgen/wordlists"
```

Use the wordlists in your application:

```go
package main

import (
    "fmt"
    "github.com/wordgen/wordlists"
)

func main() {
    // Print the first word from the EFF Large wordlist
    fmt.Println(wordlists.EFFLarge[0])
}
```

## Available Wordlists

- [EFFLarge]: A large wordlist from the Electronic Frontier Foundation.

## Contributing

When submitting a pull request, please ensure they are directed to the `dev`
branch of the repository.

Ensure your commit messages and pull request titles follow the
[Conventional Commits] specification.

## License

All files in this repository are licensed under the GNU Affero General Public
License v3.0 or later - see the [LICENSE] file for details.

<!-- wordlist links -->
[EFFLarge]: https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt

<!-- other links -->
[badge-url]: https://pkg.go.dev/badge/github.com/wordgen/wordlists.svg
[pkg-url]: https://pkg.go.dev/github.com/wordgen/wordlists
[Conventional Commits]: https://conventionalcommits.org
[LICENSE]: LICENSE
