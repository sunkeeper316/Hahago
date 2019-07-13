//
//  ButtonCell.swift
//  Hahago
//
//  Created by 黃德桑 on 2019/7/12.
//  Copyright © 2019 sun. All rights reserved.
//

import UIKit

class LoglabelCell: UITableViewCell ,UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lables.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "LabellogCell", for: indexPath) as! LabellogCell
        cell.label.textColor = .black
        if indexPath.row == 0 {
            let color = UIColor(displayP3Red: 8/255, green: 170/255, blue: 1, alpha: 1)
            cell.label.textColor = color
        }
        cell.label.text = lables[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        for i in 0..<lables.count{
           let indexpath = IndexPath(row: i, section: 0)
            if i == indexPath.item{
                continue
            }
            let cell = collectionView.cellForItem(at: indexpath) as! LabellogCell
            cell.label.textColor = .black
        }
        
        let color = UIColor(displayP3Red: 8/255, green: 170/255, blue: 1, alpha: 1)
        if segmented == 0 {
            shops = allshops
        }else if segmented == 1{
            shops = hotshops
        }else{
            shops = nearshops
        }
         let cell = collectionView.cellForItem(at: indexPath) as! LabellogCell
        switch lables[indexPath.item] {
           
        case "全部":
            
            cell.label.textColor = color
            completionHandler!(shops)
            break
        case "餐飲":
            
            cell.label.textColor = color
            var showshops = [Shop]()
            for shop in shops{
                if shop.label == "# 餐飲"{
                    showshops.append(shop)
                }
            }
            completionHandler!(showshops)
            break
        case "運動戶外":
            
            cell.label.textColor = color
            var showshops = [Shop]()
            for shop in shops{
                if shop.label == "# 運動戶外"{
                    showshops.append(shop)
                }
            }
            completionHandler!(showshops)
            break
        case "生活休閒":
            
            cell.label.textColor = color
            var showshops = [Shop]()
            for shop in shops{
                if shop.label == "# 生活休閒"{
                    showshops.append(shop)
                }
            }
            completionHandler!(showshops)
            break
        case "待分類":
            
            cell.label.textColor = color
            var showshops = [Shop]()
            for shop in shops{
                if shop.label == "# 待分類"{
                    showshops.append(shop)
                }
            }
            completionHandler!(showshops)
            break
        default:
            break
        }
    }
    var lables = [String]()
    var shops = [Shop]()
    var segmented = 0
    var completionHandler:(([Shop]) -> Void)?

    @IBOutlet weak var collection: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collection.delegate = self
        self.collection.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
