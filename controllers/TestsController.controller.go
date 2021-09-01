// Package controllers ..
package controllers

import (
	"server/config"
	"server/models"

	"github.com/gin-gonic/gin"
)

// TestJoins ..
func TestJoins(c *gin.Context) {
	var items models.Items
	config.DB.Where("id = ?", 1).Scopes(models.WithTranslation("items")).Find(&items)

	c.JSON(200, gin.H{
		"items": items,
	})
}

func TestController(c *gin.Context) {
	var purchases []models.Purchases

	query := "tax_value LIKE ?"

	config.DB.Where(query, "%2.8%").Find(&purchases)

	c.JSON(200, gin.H{
		"purchases": purchases,
	})
}
