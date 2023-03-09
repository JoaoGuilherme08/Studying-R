# Cria uma lista de números
x <- c(3, 6, 9, 12, 15)

# Calcula a média dos números na lista
print(paste("Média: ", mean(x)))

# Soma
print(paste("Soma : ", 2 + 3))

# Subtração
print(paste("Subtração : ", 5 - 2))

# Multiplicação
print(paste("Multiplicação : ", 4 * 7))

# Divisão
print(paste("Divisão : ", 15 / 3))

# Vetor de números inteiros
vetor_inteiro <- c(1, 2, 3, 4, 5)
print(vetor_inteiro)

# Vetor de números reais
vetor_real <- c(1.5, 2.3, 3.8, 4.2, 5.1)
print(vetor_real)

# Vetor de caracteres
vetor_caracter <- c("a", "b", "c", "d", "e")
print(vetor_caracter)


# Acessando elementos do vetor
vetor_inteiro[1] # Retorna o primeiro elemento do vetor_inteiro
print(vetor_inteiro[1])

# Alterando elementos do vetor
vetor_inteiro[1] <- 10 # Substitui o primeiro elemento do vetor_inteiro por 10
print(vetor_inteiro[1])

# Soma de vetores
vetor1 <- c(1, 2, 3)
vetor2 <- c(4, 5, 6)
vetor_soma <- vetor1 + vetor2
print(vetor_soma)