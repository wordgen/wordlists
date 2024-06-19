# wordgen/wordlists

This repository contains a collection of wordlists converted to Go string slices
for easy use in various applications. All words are lowercase and contain only
letters.

The wordlists are maintained as separate Go modules within the repository, but
you can also import them all together through the root module.

## Installation

To install the root module which includes all wordlists, use:

```shell
go get github.com/wordgen/wordlists
```

To install a specific wordlist module, use `go get` with the appropriate module
path. For example, to install the `eff` module:

```shell
go get github.com/wordgen/wordlists/eff
```

## Usage

### Using the Root Module

You can import the root module to access all wordlists:

```go
package main

import (
	"fmt"
	"github.com/wordgen/wordlists"
)

func main() {
	// Print the first word from the EFF Large Wordlist
	fmt.Println(wordlists.EffLarge[0])

	// Print the first word from the Names Female Wordlist
	fmt.Println(wordlists.NamesFemale[0])
}
```

### Using Individual Submodules

If you prefer to import individual submodules:

```go
package main

import (
	"fmt"
	"github.com/wordgen/wordlists/eff"
	"github.com/wordgen/wordlists/names"
)

func main() {
	// Print the first word from the EFF Large Wordlist
	fmt.Println(eff.Large[0])

	// Print the first word from the Names Female Wordlist
	fmt.Println(names.Female[0])
}
```

## Available Wordlists

Some wordlists have been altered from their original source. Please see the
[CHANGES] file for more information.

### EFF Wordlists [![eff-badge]][eff-pkg]

- [Large]: Focused on memorability and passphrase strength. (7776 words)
- [Short1]: Includes the 1,296 most memorable and distinct words. (1296 words)
- [Short2]: Each word has a unique three-character prefix. (1296 words)

### Names Wordlists [![names-badge]][names-pkg]

- [Mixed]: Common names used in the United States and Great Britain. (21934 words)
- [Female]: Common names of females in English-speaking countries. (4922 words)
- [Male]: Common names of males in English-speaking countries. (3895 words)

## Contributing

When submitting a pull request, please ensure they are directed to the `dev`
branch of the repository.

Ensure your commit messages and pull request titles follow the
[Conventional Commits] specification.

## License

All files in this repository are licensed under the GNU Affero General Public
License v3.0 or later - see the [LICENSE] file for details.

<!-- links -->
[CHANGES]: CHANGES.md
[Conventional Commits]: https://conventionalcommits.org
[LICENSE]: LICENSE

<!-- badges -->
[eff-badge]: https://pkg.go.dev/badge/github.com/wordgen/wordlists/eff.svg
[eff-pkg]: https://pkg.go.dev/github.com/wordgen/wordlists/eff
[names-badge]: https://pkg.go.dev/badge/github.com/wordgen/wordlists/names.svg
[names-pkg]: https://pkg.go.dev/github.com/wordgen/wordlists/names

<!-- eff -->
[Large]: https://eff.org/files/2016/07/18/eff_large_wordlist.txt
[Short1]: https://eff.org/files/2016/09/08/eff_short_wordlist_1.txt
[Short2]: https://eff.org/files/2016/09/08/eff_short_wordlist_2_0.txt

<!-- names -->
[Mixed]: https://github.com/elitejake/Moby-Project/blob/main/Moby%20Words%20II/NAMES.TXT
[Female]: https://github.com/elitejake/Moby-Project/blob/main/Moby%20Words%20II/NAMES-F.TXT
[Male]: https://github.com/elitejake/Moby-Project/blob/main/Moby%20Words%20II/NAMES-M.TXT
