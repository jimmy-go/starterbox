package hello

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestHello(t *testing.T) {
	exp := "Hello devops"
	actual := Hello()
	assert.EqualValues(t, exp, actual)
}
