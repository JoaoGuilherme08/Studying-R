# Lê o arquivo CSV
dados <- read.csv("dados.csv")

# Seleciona apenas as colunas de interesse
dados_selecionados <- dados[, c("coluna1", "coluna2", "coluna3")]

# Calcula a média da coluna 2
media_coluna2 <- mean(dados_selecionados$coluna2)

# Cria um novo dataframe com apenas as linhas em que a coluna 2 é maior do que a média
dados_filtrados <- subset(dados_selecionados, coluna2 > media_coluna2)

print(dados_filtrados)
x <- dados_filtrados$coluna1
y <- dados_filtrados$coluna2

# Plota um gráfico de dispersão
plot(x, y,
    main = "Gráfico de Dispersão",
    xlab = "Coluna 1",
    ylab = "Coluna 2",
    col = "blue",
    pch = 16)

abline(lm(y ~ x), col = "blue")

# O operador $ é usado para acessar uma coluna específica em um dataframe ou lista.
# Ele é usado para extrair uma variável ou coluna de dados de um objeto de dados sem precisar especificar o nome do objeto novamente.

# A sintaxe básica para usar o operador $ é:
# nome_do_objeto$nome_da_coluna

# Por exemplo, se tivermos um dataframe chamado "dados" que contém uma coluna chamada "idade", 
# podemos acessar essa coluna usando o operador $ da seguinte maneira:
# dados$idade

# Isso extrairá a coluna "idade" do dataframe "dados" e retornará um vetor contendo os valores dessa coluna.

# O operador $ é uma maneira conveniente e eficiente de acessar colunas em objetos de dados em R, 
# e é amplamente usado em análise de dados e programação em R.