package model

type Stock struct {
	ID     int `gorm:"primary_key,autoIncrement"`
	Ticker string
	Price  float64
}
