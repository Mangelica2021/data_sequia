#Configurar ruta del archivo
#setwd("Dropbox/documentosA/Estaciones_UNIR/estaciones_txt_climatol")
setwd("C:/Users/Angélica Andrade/Dropbox/documentosA/Estaciones_UNIR/row_data_senamhi/estaciones_txt_climatol")
getwd()

#Instalar Climatol -  solo instalar una vez
#install.packages("climatol")
#Cargar climatol
library(climatol)

#Ver Funciones climatol (Opcional - para abrir el archivo de funciones)
#View(daily2climatol)

#Convertir datos  a formato climatol
#mindat = 1905 = 365 x 3 (3 años)

anio_min<-1975 #año mínimo para el análisis
anio_max<-2020 #año máximo para el análisis

#1.Convertir los datos a formato climatol 
daily2climatol(stfile = "stations.txt", stcol = 1:6, datcol = c(1:3,4), varcli="pre",anyi = anio_min,anyf = anio_max, mindat = 1095, sep = ",", na.strings = "NA")

#2.Aplicar homogen en modo exploratorio diario
homogen("pre",anio_min, anio_max, expl = TRUE)

#3.Transformar los datos diarios a datos mensuales  valm = 1 para precipitación
dd2m(varcli = "pre",anio_min,anio_max,valm = 1)

#4.Aplicar homogen en modo exploratorio mensual
homogen("pre-m",anio_min, anio_max, expl = TRUE)

#5.Ajuste mensual  std = 2 (El valor 2 se utiliza para variables como precipitación)
homogen("pre-m",anio_min, anio_max, dz.min = -8, dz.max = 9, snht1 = 20, snht2 = 50, std =2, cutlev = 2.3, vmin = 0 )

#6.Ajuste diario (metad = TRUE toma los break mensuales)
homogen("pre",anio_min, anio_max,  dz.min = -10, dz.max = 20, std =2, vmin = 0, metad = TRUE)

#Cargar el archivo rda generado que muestra SNHT y RMSE
load("pre_1975-2020.rda")
View(est.c)

#Generar las series homogenizadas diarias
dahstat('pre',anio_min,anio_max, stat = 'series')

#GEnerar las series homogenizadas mensuales
dahstat('pre-m',anio_min,anio_max, stat = 'series')


#PARA TEMPERATURA MÁXIMA
#Convertir datos  a formato climatol
#mindat = 1905 = 365 x 3 (3 años)

#1.Convertir los datos a formato climatol 
daily2climatol(stfile = "stations.txt", stcol = 1:6, datcol = c(1:3,5), varcli="tmax",anyi = anio_min ,anyf = anio_max, mindat = 365, sep = ",", na.strings = "NA")

class(anio_min)
#2.Aplicar homogen en modo exploratorio diario
homogen("tmax",anio_min, anio_max, expl = TRUE)

#3.Transformar los datos diarios a datos mensuales  valm = 2 para temperatura
#View(dd2m)
dd2m(varcli = "tmax", anio_min,anio_max,valm = 2)

#4.Aplicar homogen en modo exploratorio mensual
homogen("tmax-m",anio_min, anio_max, expl = TRUE)

#5.Ajuste mensual  std =3 (El valor 3 se utiliza para variables como temperatura máxima y mínima)
homogen("tmax-m",anio_min, anio_max, dz.min = -5, dz.max = 5, snht1 = 50, snht2 = 100, std = 3, vmin = -10, cutlev = 2.3 )

#6.Ajuste diario (metad = TRUE toma los break mensuales)
homogen("tmax",anio_min, anio_max, dz.min = -15, dz.max = 25, std =3, vmin = -10, vmax = 30, metad = TRUE)

#Cargar el archivo rda generado que muestra SNHT y RMSE
load("tmax_1975-2020.rda")
View(est.c)

#GEnerar las series homogenizadas diarias
dahstat('tmax',anio_min,anio_max, stat = 'series')

#GEnerar las series homogenizadas mensuales
dahstat('tmax-m',anio_min,anio_max, stat = 'series')


#PARA TEMPERATURA MINIMA
#Convertir datos  a formato climatol
#mindat = 1905 = 365 x 3 (3 años)

#1.Convertir los datos a formato climatol 
daily2climatol(stfile = "stations.txt", stcol = 1:6, datcol = c(1:3,6), varcli="tmin",anyi = anio_min ,anyf = anio_max, mindat = 365, sep = ",", na.strings = "NA")

#2.Aplicar homogen en modo exploratorio diario
homogen("tmin",anio_min, anio_max, expl = TRUE)

#3.Transformar los datos diarios a datos mensuales  valm = 2 (mean) para temperatura
#View(dd2m)
dd2m(varcli = "tmin", anio_min,anio_max,valm = 2)

#4.Aplicar homogen en modo exploratorio mensual
homogen("tmin-m",anio_min, anio_max, expl = TRUE)

#5.Ajuste mensual  std =3 (El valor 3 se utiliza para variables como temperatura máxima y mínima)
homogen("tmin-m",anio_min, anio_max, dz.min = -5, dz.max = 5, snht1 = 60, snht2 = 150, std = 3, vmin = -20 , cutlev = 2.3)

#6.Ajuste diario (metad = TRUE toma los break mensuales)
homogen("tmin",anio_min, anio_max, dz.min = -8, dz.max = 8, std =3, vmin = -20, vmax = 30 , metad = TRUE)

#7.-Cargar el archivo rda generado que muestra SNHT y RMSE
load("tmin_1989-2020.rda")

#8.-La opción View muestra el resumen estadístico de los resultados
View(est.c)

#9.-Generar las series homogenizadas diarias
dahstat('tmin',anio_min,anio_max, stat = 'series')

#9.-Generar las series homogenizadas mensuales
dahstat('tmin-m',anio_min,anio_max, stat = 'series')


