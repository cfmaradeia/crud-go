package service

import (
	"gorm.io/gorm"
)

type StockService struct {
	db *gorm.DB
}
