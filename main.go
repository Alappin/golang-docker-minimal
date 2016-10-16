package main

import (
	"fmt"
	"net/http"
)

func main() {

	http.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "OK")
	})

	fmt.Printf("Starting webserver on port 3000 with one route /health")

	http.ListenAndServe(":3000", nil)
}
