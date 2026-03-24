package main

import (
	"fmt"
)

func main() {
	//Declarar variável
	var nome string
	var idade int
	var altura float64
	var orfao bool
	//Atribuir valor
	nome = "Moisés"
	idade = 32
	altura = 1.68
	orfao = true
	fmt.Printf("Nome: %s\nIdade: %d\nAltura: %.2f\nOrfão: %t\n", nome, idade, altura, orfao)
	//Constantes
	const Pi = 3.14159
	const Ver = "1.0.0"
	const (
		_ = iota
		Leve
		_
		Médio
		_
		Pesado
	)
	fmt.Printf("Pi: %.5f\nVersão: %s\n", Pi, Ver)
	fmt.Printf("Peso L: %d\nPeso M: %d\nPeso P: %d\n", Leve, Médio, Pesado)
}
