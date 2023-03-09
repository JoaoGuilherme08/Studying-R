library(RPostgreSQL)
library(ggplot2)

con <- dbConnect(PostgreSQL(), user = "ofqvbmyr", password = "l7FLsWR0mCu8ws1-qFM1Srjj0rQuNUDP", dbname = "ofqvbmyr", host = "jelani.db.elephantsql.com", port = "5432")


# carregar a tabela "pessoas" em um dataframe
pessoas <- dbGetQuery(con, "SELECT id, nome, idade, altura FROM pessoas")

print(pessoas) 

ggplot(data = pessoas, aes(x = nome, y = idade)) +
  geom_bar(stat = "identity")

ggplot(data = pessoas, aes(x = idade, y = altura, color = nome)) +
  geom_line()

ggplot(data = pessoas, aes(x = idade, y = altura)) +
  geom_point()
  
dbDisconnect(con)
