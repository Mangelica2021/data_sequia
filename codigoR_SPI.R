#Configurar ruta del archivo
#setwd("Dropbox/documentosA/Estaciones_UNIR/estaciones_txt_climatol")
#setwd("C:/Users/Ang?lica Andrade/Dropbox/documentosA/Estaciones_UNIR/clean_data_senamhi/estaciones_spi")
setwd("estaciones_spi")
getwd()

#Instalar paquete SPI - SPEI solo instalar una vez
install.packages("SPEI")

#Cargar SPEI
library(SPEI)

#cargar Dataframe de cada estacion 
df_4001<-read.csv("4001_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4001 = df_4001

df_4005<-read.csv("4005_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4005 = df_4005

df_4101<-read.csv("4101_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4101 = df_4101 

df_4012<-read.csv("4012_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4012 = df_4012

df_4019<-read.csv("4019_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4019 = df_4019

df_4023<-read.csv("4023_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4023 = df_4023 

df_4028<-read.csv("4028_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4028 = df_4028

df_4090<-read.csv("4090_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4090 = df_4090

df_4102<-read.csv("4102_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4102 = df_4102 

df_4103<-read.csv("4103_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4103 = df_4103

df_4104<-read.csv("4104_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4104 = df_4104

df_4106<-read.csv("4106_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4106 = df_4106 

df_4302<-read.csv("4302_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4302 = df_4302

df_4303<-read.csv("4303_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4303 = df_4303

df_4306<-read.csv("4306_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4306 = df_4306 

df_4309<-read.csv("4309_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4309 = df_4309

df_4311<-read.csv("4311_mes.csv", header = TRUE, sep = ",", dec = ".") 
df1_4311 = df_4311


#Calcular spi para 3 meses para cada estacion
e4001_spi3<-spi(df_4001$pp, scale = 3 , distribution = 'Gamma')
e4001_spi3
plot.spei(e4001_spi3)

e4005_spi3<-spi(df_4005$pp, scale = 3 , distribution = 'Gamma')
e4005_spi3
plot.spei(e4005_spi3)

e4101_spi3<-spi(df_4101$pp, scale = 3 , distribution = 'Gamma')
e4101_spi3
plot.spei(e4101_spi3)

e4012_spi3<-spi(df_4012$pp, scale = 3 , distribution = 'Gamma')
e4012_spi3
plot.spei(e4012_spi3)

e4019_spi3<-spi(df_4019$pp, scale = 3 , distribution = 'Gamma')
e4019_spi3
plot.spei(e4019_spi3)

e4023_spi3<-spi(df_4023$pp, scale = 3 , distribution = 'Gamma')
e4023_spi3
plot.spei(e4023_spi3)

e4028_spi3<-spi(df_4028$pp, scale = 3 , distribution = 'Gamma')
e4028_spi3
plot.spei(e4028_spi3)

e4090_spi3<-spi(df_4090$pp, scale = 3 , distribution = 'Gamma')
e4090_spi3
plot.spei(e4090_spi3)

e4102_spi3<-spi(df_4102$pp, scale = 3 , distribution = 'Gamma')
e4102_spi3
plot.spei(e4102_spi3)

e4103_spi3<-spi(df_4103$pp, scale = 3 , distribution = 'Gamma')
e4103_spi3
plot.spei(e4103_spi3)

e4104_spi3<-spi(df_4104$pp, scale = 3 , distribution = 'Gamma')
e4104_spi3
plot.spei(e4104_spi3)

e4106_spi3<-spi(df_4106$pp, scale = 3 , distribution = 'Gamma')
e4106_spi3
plot.spei(e4106_spi3)

e4302_spi3<-spi(df_4302$pp, scale = 3 , distribution = 'Gamma')
e4302_spi3
plot.spei(e4302_spi3)

e4303_spi3<-spi(df_4303$pp, scale = 3 , distribution = 'Gamma')
e4303_spi3
plot.spei(e4303_spi3)

e4306_spi3<-spi(df_4306$pp, scale = 3 , distribution = 'Gamma')
e4306_spi3
plot.spei(e4306_spi3)

e4309_spi3<-spi(df_4309$pp, scale = 3 , distribution = 'Gamma')
e4309_spi3
plot.spei(e4309_spi3)

e4311_spi3<-spi(df_4311$pp, scale = 3 , distribution = 'Gamma')
e4311_spi3
plot.spei(e4311_spi3)


#Guardar los indices SPI para cada dataframe

#4001
vals=e4001_spi3$fitted
df1_4001$spi3 = vals[,1] 

#4005
vals=e4005_spi3$fitted
df1_4005$spi3 = vals[,1] 

#4101
vals=e4101_spi3$fitted
df1_4101$spi3 = vals[,1] 

#4012
vals=e4012_spi3$fitted
df1_4012$spi3 = vals[,1] 

#4019
vals=e4019_spi3$fitted
df1_4019$spi3 = vals[,1] 

#4023
vals=e4023_spi3$fitted
df1_4023$spi3 = vals[,1]

#4028
vals=e4028_spi3$fitted
df1_4028$spi3 = vals[,1] 

#4090
vals=e4090_spi3$fitted
df1_4090$spi3 = vals[,1] 

#4102
vals=e4102_spi3$fitted
df1_4102$spi3 = vals[,1]

#4103
vals=e4103_spi3$fitted
df1_4103$spi3 = vals[,1] 

#4104
vals=e4104_spi3$fitted
df1_4104$spi3 = vals[,1] 

#4106
vals=e4106_spi3$fitted
df1_4106$spi3 = vals[,1]

#4302
vals=e4302_spi3$fitted
df1_4302$spi3 = vals[,1] 

#4303
vals=e4303_spi3$fitted
df1_4303$spi3 = vals[,1] 

#4306
vals=e4306_spi3$fitted
df1_4306$spi3 = vals[,1]

#4309
vals=e4309_spi3$fitted
df1_4309$spi3 = vals[,1] 

#4311
vals=e4311_spi3$fitted
df1_4311$spi3 = vals[,1] 


#finalmente convertir a .csv  
write.csv(df1_4001, file = "indices_4001.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4005, file = "indices_4005.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4101, file = "indices_4101.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4012, file = "indices_4012.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4019, file = "indices_4019.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4023, file = "indices_4023.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4028, file = "indices_4028.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4090, file = "indices_4090.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4102, file = "indices_4102.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4103, file = "indices_4103.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4104, file = "indices_4104.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4106, file = "indices_4106.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4302, file = "indices_4302.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4303, file = "indices_4303.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4306, file = "indices_4306.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4309, file = "indices_4309.csv", row.names = FALSE) # guarda un archivo csv
write.csv(df1_4311, file = "indices_4311.csv", row.names = FALSE) # guarda un archivo csv

