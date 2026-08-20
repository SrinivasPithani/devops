package main

import (
	"fmt"
	"net/http"
)

func homeHandler (w http.ResponseWriter , r *http.Request) {
	fmt.Fprintf(w, "Welcome to our cloud learning API")
}

func main() {
	http.HandleFunc("/", homeHandler)

	fmt.Println("Starting server on :8080") 
	if err := http.ListenAndServe(":8080" , nil); err != nil {
		panic(err)
	}

}
