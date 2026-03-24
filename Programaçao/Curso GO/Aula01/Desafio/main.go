package main

import "fmt"

func main()  {
	total := 0.0
	for i := 0; i < 3; i++ {
		var codigo int
		var quantia int
		var valorUnitario float64

		fmt.Scan(&codigo)
		fmt.Scan(&valorUnitario)
		fmt.Scan(&quantia)
		subtotal := float64(quantia) * valorUnitario
		total = total + subtotal
		
	}
	fmt.Printf("VALOR A PAGAR: R$ %.2f\n", total)
}