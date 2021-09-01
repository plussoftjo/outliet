// Package controllers ...
package controllers

import (
	"server/config"
	"server/models"
	"server/vendors"
	"strings"

	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	"golang.org/x/crypto/bcrypt"
)

// LoginController ...
func LoginController(c *gin.Context) {

	var user models.User
	var login models.Login
	if err := c.ShouldBindJSON(&login); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	// Check if have user
	if err := config.DB.Preload("Roles").Where("phone = ?", login.Phone).First(&user).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": err.Error(),
		})
		return
	}
	// Check Password
	err := bcrypt.CompareHashAndPassword([]byte(user.Password), []byte(login.Password))
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": err.Error(),
		})
		return
	}
	token, err := vendors.CreateToken(user.ID)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	c.JSON(200, gin.H{
		"user":  user,
		"token": token,
	})
}

// RegisterController ...
func RegisterController(c *gin.Context) {
	var user models.User
	if err := c.ShouldBindJSON(&user); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	hashedPassword, err := bcrypt.GenerateFromPassword([]byte(user.Password), bcrypt.DefaultCost)
	if err != nil {
		panic(err)
	}
	user.Password = string(hashedPassword)
	if err := config.DB.Create(&user).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	token, err := vendors.CreateToken(user.ID)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	var users []models.User
	config.DB.Preload("Roles").Find(&users)
	config.DB.Preload("Roles").Where("id = ?", user.ID).First(&user)

	c.JSON(http.StatusOK, gin.H{"user": user, "token": token, "users": users})
}

// Auth ..
func Auth(c *gin.Context) {
	user, err := AuthWithReturnUser(c.Request.Header["Authorization"][0])
	if err != nil {
		c.JSON(401, gin.H{
			"error": "UnAuthorized",
		})
		return
	}

	c.JSON(200, gin.H{
		"user": user,
	})
}

// AppAuth ..
func AppAuth(c *gin.Context) {
	user, err := AuthWithReturnUser(c.Request.Header["Authorization"][0])
	if err != nil {
		c.JSON(401, gin.H{
			"error": "UnAuthorized",
		})
		return
	}

	var orders []models.Orders
	config.DB.Where("user_id = ?", user.ID).Preload("OrderItems", func(db *gorm.DB) *gorm.DB {
		return db.Preload("Item")
	}).Find(&orders)

	var addresses []models.Addresses
	config.DB.Where("user_id = ?", user.ID).Find(&addresses)

	c.JSON(200, gin.H{
		"user":      user,
		"orders":    orders,
		"addresses": addresses,
	})
}

// AppLoginController ...
func AppLoginController(c *gin.Context) {

	var user models.User
	var login models.Login
	if err := c.ShouldBindJSON(&login); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	// Check if have user
	if err := config.DB.Preload("Roles").Where("phone = ?", login.Phone).First(&user).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": err.Error(),
		})
		return
	}
	// Check Password
	err := bcrypt.CompareHashAndPassword([]byte(user.Password), []byte(login.Password))
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": err.Error(),
		})
		return
	}
	token, err := vendors.CreateToken(user.ID)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	var orders []models.Orders
	config.DB.Where("user_id = ?", user.ID).Preload("OrderItems", func(db *gorm.DB) *gorm.DB {
		return db.Preload("Item")
	}).Find(&orders)

	var addresses []models.Addresses
	config.DB.Where("user_id = ?", user.ID).Find(&addresses)

	c.JSON(200, gin.H{
		"user":      user,
		"token":     token,
		"orders":    orders,
		"addresses": addresses,
	})
}

// AuthWithReturnUser ..
func AuthWithReturnUser(tok string) (*models.User, error) {
	// Auth
	token := strings.Split(tok, " ")[1]

	userID, err := vendors.VerifyToken(token)
	if err != nil {
		return nil, err
	}

	var user models.User
	// Check if have user
	if err := config.DB.Where("id = ?", userID).First(&user).Error; err != nil {
		return nil, err
	}

	return &user, nil
}

// AppUpdateUser ...
func AppUpdateUser(c *gin.Context) {
	var user models.User
	if err := c.ShouldBindJSON(&user); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	if user.Password == "" {
		config.DB.Model(&models.User{}).Where("id = ?", user.ID).Updates(models.User{
			Name:  user.Name,
			Phone: user.Phone,
		})
	} else {
		hashedPassword, err := bcrypt.GenerateFromPassword([]byte(user.Password), bcrypt.DefaultCost)
		if err != nil {
			panic(err)
		}
		config.DB.Model(&models.User{}).Where("id = ?", user.ID).Updates(models.User{
			Name:     user.Name,
			Phone:    user.Phone,
			Password: string(hashedPassword),
		})
	}

	var userData models.User
	config.DB.Where("id = ?", user.ID).First(&user)

	c.JSON(200, gin.H{
		"user": userData,
	})
}

// UpdateUser ...
func UpdateUser(c *gin.Context) {
	var user models.User
	if err := c.ShouldBindJSON(&user); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	if user.Password == "" {
		config.DB.Model(&models.User{}).Where("id = ?", user.ID).Updates(models.User{
			Name:    user.Name,
			Phone:   user.Phone,
			RolesID: user.RolesID,
		})
	} else {
		hashedPassword, err := bcrypt.GenerateFromPassword([]byte(user.Password), bcrypt.DefaultCost)
		if err != nil {
			panic(err)
		}
		config.DB.Model(&models.User{}).Where("id = ?", user.ID).Updates(models.User{
			Name:     user.Name,
			Phone:    user.Phone,
			RolesID:  user.RolesID,
			Password: string(hashedPassword),
		})
	}

	var users []models.User
	config.DB.Preload("Roles").Find(&users)

	c.JSON(200, gin.H{
		"users": users,
	})
}

// UsersListIndex ..
func UsersListIndex(c *gin.Context) {
	var users []models.User
	config.DB.Preload("Roles").Where("roles_id != ?", 0).Find(&users)
	c.JSON(200, gin.H{
		"users": users,
	})
}

// ClientsIndex ..
func ClientsIndex(c *gin.Context) {
	var users []models.User
	config.DB.Where("roles_id = ?", 0).Find(&users)
	c.JSON(200, gin.H{
		"users": users,
	})
}

// DeleteUser ...
func DeleteUser(c *gin.Context) {
	ID := c.Param("id")
	config.DB.Delete(&models.User{}, ID)
	var users []models.User
	config.DB.Preload("Roles").Find(&users)
	c.JSON(200, gin.H{
		"users": users,
	})
}

// HR Controller ...

// StoreEmployeeType ..
type StoreEmployeeType struct {
	User     models.User     `json:"user"`
	Employee models.Employee `json:"employee"`
}

// StoreEmployee ..
func StoreEmployee(c *gin.Context) {
	var employeeType StoreEmployeeType
	if err := c.ShouldBindJSON(&employeeType); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	user := employeeType.User
	employee := employeeType.Employee

	hashedPassword, err := bcrypt.GenerateFromPassword([]byte(user.Password), bcrypt.DefaultCost)
	if err != nil {
		panic(err)
	}
	user.Password = string(hashedPassword)
	if err := config.DB.Create(&user).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	// StoreEmployee
	employee.UserID = user.ID

	token, err := vendors.CreateToken(user.ID)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	var users []models.User
	config.DB.Preload("Roles").Preload("Employee").Where("roles_id != ?", 0).Find(&users)
	config.DB.Preload("Roles").Preload("Employee").Where("id = ?", user.ID).First(&user)

	c.JSON(http.StatusOK, gin.H{"user": user, "token": token, "users": users})
}

// IndexEmployee ..
func IndexEmployee(c *gin.Context) {
	var users []models.User
	config.DB.Preload("Roles").Preload("Employee").Where("roles_id != ?", 0).Find(&users)

	c.JSON(http.StatusOK, gin.H{"users": users})
}

// DeleteEmployee ...
func DeleteEmployee(c *gin.Context) {
	ID := c.Param("id")
	config.DB.Delete(&models.User{}, ID)
	var users []models.User
	config.DB.Preload("Roles").Preload("Employee").Where("roles_id != ?", 0).Find(&users)
	c.JSON(200, gin.H{
		"users": users,
	})
}

// UpdateEmployee ...
func UpdateEmployee(c *gin.Context) {
	var employeeType StoreEmployeeType
	if err := c.ShouldBindJSON(&employeeType); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	user := employeeType.User
	employee := employeeType.Employee

	if user.Password == "" {
		config.DB.Model(&models.User{}).Where("id = ?", user.ID).Updates(models.User{
			Name:    user.Name,
			Phone:   user.Phone,
			RolesID: user.RolesID,
		})
	} else {
		hashedPassword, err := bcrypt.GenerateFromPassword([]byte(user.Password), bcrypt.DefaultCost)
		if err != nil {
			panic(err)
		}
		config.DB.Model(&models.User{}).Where("id = ?", user.ID).Updates(models.User{
			Name:     user.Name,
			Phone:    user.Phone,
			RolesID:  user.RolesID,
			Password: string(hashedPassword),
		})
	}

	config.DB.Save(&employee)

	var users []models.User
	config.DB.Preload("Roles").Preload("Employee").Where("roles_id != ?", 0).Find(&users)

	c.JSON(200, gin.H{
		"users": users,
	})
}
