#Arquivos do meu banco de dados Postgresql

install.packages("RPostgreSQL")
install.packages("RODBC")
install.packages("odbc")
library("RPostgreSQL")
library(DBI)
library(RODBC, odbc)

# create an PostgreSQL instance and create one connection.
drv <- dbDriver("PostgreSQL")

# open the connection using user, passsword, etc., as
con <- dbConnect(drv, dbname = "mrk")
df <- dbGetQuery(con, statement = paste(
  "SELECT itemCode, itemCost, itemProfit",
  "FROM sales",
  "SORT BY itemName"));

connection <- dbConnect(PostgreSQL(), user = "postgres", password = "dsaacademy",
                        dbname = "Vendas")

