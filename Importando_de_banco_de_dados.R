# Packages to be used

library(DBI)
library(RMySQL)
library(sqldf)

# Create connection

con <- dbConnect(RMySQL::MySQL(),
                 dbname = "classicmodels",
                 host = "localhost",
                 user = "root",
                 password = ""
                 )

# Extract files or table

TB_data <- dbReadTable(conn = con,
                       name = 'products')
                       
# Disconn from Database

dbDisconnect(con)

# print with str

str(TB_data)
View(TB_data)

# Export to Excel
# Load packages

library(tidyr)
library(tidyverse)
library(xlsx)
library(readxl)
library(dplyr)

# Save as ...

?read.xlsx
?read.table

# write to xlsx

f_out <- ('D:/Documentos/Cursos/Meu estudos com R/products.xlsx')
write.xlsx(x = TB_data,
           file = f_out,
           sheetName = "products"
           )

