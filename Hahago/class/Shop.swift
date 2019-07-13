
import UIKit
import Foundation
class Shop {
    var shopname :String?
    var shopimg :UIImage?
    var shopimgbig : UIImage?
    var products = [Product]()
    var label :String?
    
    public init(_ shopname :String, _ shopimg :UIImage, _ shopimgbig : UIImage, _ products :[Product] ,_ label :String) {
        self.shopname = shopname
        self.shopimg = shopimg
        self.shopimgbig = shopimgbig
        self.products = products
        self.label = label
        
    }
}

var m = Shop("麥當勞", UIImage(named: "M")!, UIImage(named: "Mbig")!, [m1,m2,m3], "# 餐飲")
var city = Shop("城市綠洲", UIImage(named: "city")!, UIImage(named: "citybig")!, [city1,city2,city3], "# 運動戶外")
var six = Shop("六福村", UIImage(named: "six")!, UIImage(named: "sixbig")!, [six1,six2,six3], "# 生活休閒")
