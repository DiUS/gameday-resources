package examples

// Package examples contains a single test that will hit the main API 100 times
// using asynchronous go-routines to send many overlapping requests.
// During this time, Muxy will be injecting chaos into the system.
// Whilst we don't care about _how_ the API returns 200 response,
// we simply care that it _only_ returns successful responses.
// It is a very crude test to ensure the system can be resilient in
// the face of non-deterministic failure modes.

import (
	"bufio"
	"fmt"
	"net/http"
	"os"
	"sync"
	"testing"
	"time"
)

func Test_Example100calls(t *testing.T) {
	fmt.Println("Waiting for Muxy..")

	select {
	case <-time.After(2 * time.Second):
	}

	fmt.Println("Running tests")

	wait := &sync.WaitGroup{}
	const numberOfRequests = 100

	wait.Add(numberOfRequests)
	for i := 0; i < numberOfRequests; i++ {
		go func() {
			defer wait.Done()
			resp, err := http.Get(os.Getenv("API_HOST"))
			checkErr(err, false, t)
			fmt.Println(resp)

			if resp != nil {
				fmt.Println("\nResponse:")
				r := bufio.NewReader(resp.Body)
				r.WriteTo(os.Stdout)
				fmt.Println()
			} else {
				fmt.Println("No response body")
			}
			if resp.StatusCode != 200 {
				t.Fatalf("Expected 200 response code, but got %d", resp.StatusCode)
			}
		}()
	}
	fmt.Println("Waiting for all requests to finish...")
	wait.Wait()
}

func checkErr(err error, expected bool, t *testing.T) {
	if err != nil && !expected {
		t.Fatalf("Error not expected: %s", err.Error())

	} else if err == nil && expected {
		t.Fatalf("Error expected, but did not get one")
	}
}
