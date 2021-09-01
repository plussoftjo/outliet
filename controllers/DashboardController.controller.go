// Package controllers ..
package controllers

import (
	"server/config"
	"server/models"
	"server/vendors"

	"github.com/gin-gonic/gin"
)

// IndexDashboard ..
func IndexDashboard(c *gin.Context) {

	startOfToday, endOfToday := vendors.BetwenToday()
	startOfMonth, endOfMonth := vendors.BetweenThisMonth()

	// Items Total
	var totalItems int64
	config.DB.Model(&models.Items{}).Count(&totalItems)

	var todayOrdersLength int64
	config.DB.Model(&models.Orders{}).Where("created_at BETWEEN ? AND ?", startOfToday, endOfToday).Count(&todayOrdersLength)

	var monthOrdersLength int64
	config.DB.Model(&models.Orders{}).Where("created_at BETWEEN ? AND ?", startOfMonth, endOfMonth).Count(&monthOrdersLength)

	var todaySales []models.Sales // Just For Show
	config.DB.Where("created_at BETWEEN ? AND ?", startOfToday, endOfToday).Find(&todaySales)

	var todaySalesNet float64
	todaySalesNet = 0 // Today Sales In the box top
	for _, sale := range todaySales {
		saleNet := sale.Net
		todaySalesNet = todaySalesNet + saleNet
	}

	var lastOrders []models.Orders
	config.DB.Order("id desc").Limit(7).Find(&lastOrders)

	var lastItems []models.Items
	config.DB.Order("id desc").Preload("Categories").Preload("SubCategories").Limit(7).Find(&lastItems)

	var todayAddedItemsCount int64
	config.DB.Model(&models.Items{}).Where("created_at BETWEEN ? AND ?", startOfToday, endOfToday).Count(&todayAddedItemsCount)

	var lastClients []models.User
	config.DB.Limit(15).Where("roles_id = ?", "1000").Find(&lastClients)

	c.JSON(200, gin.H{
		"totalItems":           totalItems,
		"todayOrdersLength":    todayOrdersLength,
		"monthOrdersLength":    monthOrdersLength,
		"todaySalesNet":        todaySalesNet,
		"lastOrders":           lastOrders,
		"lastItems":            lastItems,
		"todayAddedItemsCount": todayAddedItemsCount,
		"lastClients":          lastClients,
	})
}
