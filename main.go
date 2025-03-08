package main

import (
	"crud-go/controller"
	"crud-go/infra"
	"crud-go/service"
)

func main() {
	db := infra.CreateConnection()
	stockService := service.NewStockService(db)
	stockController := controller.NewStockController(stockService)
	stockController.InitRoutes()
}
