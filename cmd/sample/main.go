package main

import (
	"fmt"

	"github.com/jimmy-go/startergox/pkg/bye"
	"github.com/jimmy-go/startergox/pkg/hello"
)

var (
	version string
)

func main() {
	fmt.Println(hello.Hello(), bye.Bye(), version)
}
