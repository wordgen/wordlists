package wordlists

import (
	"strings"
	"testing"
	"unicode"
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
		"EFFLarge": EFFLarge,
		"Names":    Names,
	}

	for name, words := range wordLists {
		for _, word := range words {
			if !isValidWord(word) {
				t.Errorf("%s in %s", word, name)
			}
		}
	}
}
