# wordgen/wordlists

[![badge][badge-url]][pkg-url]

This repository contains a collection of wordlists converted to Go string slices
for easy use in various applications. All words are lowercase and contain only
letters.

The wordlists are maintained as separate Go modules within this repo.

## Installation

To install a specific wordlist module, use `go get` with the appropriate module
path. For example, to install the `eff` module:

```shell
go get github.com/wordgen/wordlists/eff
```

## Usage

```go
package main

import (
	"fmt"
	"github.com/wordgen/wordlists/eff"
)

func main() {
	// Print the first name from the EFF Large Wordlist
	fmt.Println(eff.Large[0])
}
```

## Available Wordlists

<!-- TODO
Some wordlists have been altered from their original source. Please see
the <FILE> file to see altered words.
-->

### EFF Wordlists

- [Large]: A large wordlist from the Electronic Frontier Foundation. 7772
- [Short1]: Designed to include the 1,296 most memorable and distinct words 1295
- [Short2]: Each word has a unique three-character prefix 1295

### Names Wordlists

- [Mixed]: List of the most common names used in the United States and Great Britain. 21934
- [Female]: List of common given names of females in English-speaking countries. 4922
- [Male]: List of common given names of males in English-speaking countries. 3895

## Contributing

When submitting a pull request, please ensure they are directed to the `dev`
branch of the repository.

Ensure your commit messages and pull request titles follow the
[Conventional Commits] specification.

## License

All files in this repository are licensed under the GNU Affero General Public
License v3.0 or later - see the [LICENSE] file for details.

<!-- wordlist links -->
[Large]: https://eff.org/files/2016/07/18/eff_large_wordlist.txt
[Short1]: https://eff.org/files/2016/09/08/eff_short_wordlist_1.txt
[Short2]: https://eff.org/files/2016/09/08/eff_short_wordlist_2_0.txt
[Mixed]: https://github.com/elitejake/Moby-Project/blob/main/Moby%20Words%20II/NAMES.TXT
[Female]: https://github.com/elitejake/Moby-Project/blob/main/Moby%20Words%20II/NAMES-F.TXT
[Male]: https://github.com/elitejake/Moby-Project/blob/main/Moby%20Words%20II/NAMES-M.TXT

<!-- other links -->
[badge-url]: https://pkg.go.dev/badge/github.com/wordgen/wordlists.svg
[pkg-url]: https://pkg.go.dev/github.com/wordgen/wordlists
[Conventional Commits]: https://conventionalcommits.org
[LICENSE]: LICENSE
