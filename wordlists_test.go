package wordlists

import (
	"regexp"
	"testing"
)

func isValidWord(word string) bool {
	re := regexp.MustCompile("^[a-z]+$")
	return re.MatchString(word)
}

func TestWords(t *testing.T) {
	wordLists := map[string][]string{
		"effLarge":    EffLarge,
		"effShort1":   EffShort1,
		"effShort2":   EffShort2,
		"namesMixed":  NamesMixed,
		"namesFemale": NamesFemale,
		"namesMale":   NamesMale,
	}

	for name, words := range wordLists {
		for _, word := range words {
			if !isValidWord(word) {
				t.Errorf("%s in %s", word, name)
			}
		}
	}
}
