package wordlists

import (
	"strings"
	"testing"
	"unicode"

	"github.com/wordgen/wordlists/eff"
	"github.com/wordgen/wordlists/names"
)

func isValidWord(word string) bool {
	for _, char := range word {
		if !unicode.IsLetter(char) {
			return false
		}
	}
	return word == strings.ToLower(word)
}

func TestWords(t *testing.T) {
	wordLists := map[string][]string{
		"effLarge":    eff.Large,
		"effShort1":   eff.Short1,
		"effShort2":   eff.Short2,
		"namesMixed":  names.Mixed,
		"namesFemale": names.Female,
		"namesMale":   names.Male,
	}

	for name, words := range wordLists {
		for _, word := range words {
			if !isValidWord(word) {
				t.Errorf("%s in %s", word, name)
			}
		}
	}
}
