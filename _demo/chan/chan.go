package main

func main() {
	ch := make(chan int, 10)
	println(ch, len(ch), cap(ch))
	go func() {
		ch <- 100
	}()
	n, ok := <-ch
	println(n, ok)
}
