package main

import (
	"fmt"
//	"strconv"
)

func main() {
	needToSort := []int{10, 2, 3, 5, 7, 1}
	fmt.Println("Before Binary Search:", needToSort)
	fmt.Println("After Binary Search:", binarySearch(needToSort...))
}

func binarySearch(arr ...int) []int {
	for i,_ := range arr {
		for j := 0; j < (len(arr) - 1) - i; j++ {
			if arr[j] > arr[j + 1] {
				temp := arr[j + 1]
				arr[j + 1] = arr[j]
				arr[j] = temp
			}
		}
//		fmt.Println("Pass No" + strconv.Itoa(i+ 1), arr)
	}
	return arr
}
