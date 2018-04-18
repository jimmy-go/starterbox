package bye

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestBye(t *testing.T) {
	exp := "Bye"
	actual := Bye()
	assert.EqualValues(t, exp, actual)
}
