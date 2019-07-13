
import UIKit
import Foundation
class Product {
    var shopname :String?
    var shopimg :UIImage?
    var productname :String?
    var productimg :UIImage?
    var price :String?
    var Date :String?
    var label :String?
    public init(_ shopname :String, _ shopimg :UIImage?, _ productname :String, _ productimg :UIImage? , _ price :String, _ Date : String, _ label :String) {
        self.shopname = shopname
        self.shopimg = shopimg
        self.productname = productname
        self.productimg = productimg
        self.price = price
        self.Date = Date
        self.label = label
    }
}

var m1 = Product("麥當勞", UIImage(named: "M")!, "無敵豬肉滿福堡",  UIImage(named: "M1")!, "原價140，特價79元", "開始時間： 2019年06月26日", "# 餐飲")
var m2 = Product("麥當勞", UIImage(named: "M")!, "豬肉滿福堡加蛋", UIImage(named: "M2")!, "原價115，特價59元", "開始時間： 2019年06月27日", "# 餐飲")
var m3 = Product("麥當勞", UIImage(named: "M")!, "豬肉滿福堡", UIImage(named: "M3")!, "原價115，特價59元", "開始時間： 2019年06月28日", "# 餐飲")

var city1 = Product("城市綠洲", UIImage(named: "city")!, "藍色太陽眼鏡", UIImage(named: "city1")!, "原價2300，特價1800元", "開始時間： 2019年06月28日", "# 運動戶外")

var city2 = Product("城市綠洲", UIImage(named: "city")!, "紅色太陽眼鏡", UIImage(named: "city2")!, "原價2300，特價1800元", "開始時間： 2019年06月28日", "# 運動戶外")

var city3 = Product("城市綠洲", UIImage(named: "city")!, "黃色太陽眼鏡", UIImage(named: "city3")!, "原價2300，特價1800元", "開始時間： 2019年06月28日", "# 運動戶外")
var six1 = Product("六福村", UIImage(named: "six")!, "六福村主題樂園", UIImage(named: "six1")!, "原價900，特價500元", "開始時間： 2019年06月28日", "# 生活休閒")
var six2 = Product("六福村", UIImage(named: "six")!, "六福村水上樂園", UIImage(named: "six2")!, "原價600，特價400元", "開始時間： 2019年06月28日", "# 生活休閒")
var six3 = Product("六福村", UIImage(named: "six")!, "六福村水陸雙玩", UIImage(named: "six1")!, "原價1300，特價800元", "開始時間： 2019年06月28日", "# 生活休閒")
