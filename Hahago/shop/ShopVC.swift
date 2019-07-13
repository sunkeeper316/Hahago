//
//  ShopVC.swift
//  Hahago
//
//  Created by 黃德桑 on 2019/7/12.
//  Copyright © 2019 sun. All rights reserved.
//

import UIKit

class ShopVC: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (shop?.products.count)!+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableview.dequeueReusableCell(withIdentifier: "ShopbiglogCell") as! ShopbiglogCell
            cell.ivshopbig.image = shop?.shopimgbig
            
            return cell
            
        }else{
            let cell = tableview.dequeueReusableCell(withIdentifier: "ShopproductCell") as! ShopproductCell
            let product = shop?.products[indexPath.row - 1]
            cell.lbproductname.text = product?.productname
            cell.lbdate.text = product?.Date
            cell.lbprice.text = product?.price
            cell.lblabel.text = product?.label
            cell.ivproduct.image = product?.productimg
            return cell
        }
    }
    var shop :Shop?
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = shop?.shopname

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
