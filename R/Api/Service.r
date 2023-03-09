modelo <- lm(Ozone ~ Wind + Temp + Month, data = airquality)

#* @apiTitle Exemplo de API [modelo linear]

#* Retorna a distancia percorrida em função da velocidade
#* @param Wind Velocidade do vento (mph)
#* @param Temp Temperautura (degrees F)
#* @param Month Mês (1-12)
#* @post /modelo

function(Wind, Temp, Month) {
  
  Wind  <- as.double(Wind)  # converte para numero
  Temp  <- as.double(Temp)  # converte para numero
  Month <- as.double(Month) # converte para numero
  
  resultado <- predict(modelo, list(Wind = Wind,
                                    Temp = Temp,
                                    Month = Month))
  
  return(resultado)
  
}

#* Retorna uma frase dizendo "Meu nome é (nome)"
#* @param Nome o nome da pessoa
#* @post /meuNome
meuNome <- function(Nome){
  paste("Meu nome é", Nome)
}


#* @get /helloworld
helloWorld <- function(){
  return("Hello World")
}