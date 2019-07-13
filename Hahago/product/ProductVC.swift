//
//  ProductVC.swift
//  Hahago
//
//  Created by 黃德桑 on 2019/7/13.
//  Copyright © 2019 sun. All rights reserved.
//

import UIKit

class ProductVC: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableview.dequeueReusableCell(withIdentifier: "PcontentCell") as! PcontentCell
            cell.ivshop.image = product.shopimg
            cell.lbshop.text = product.shopname
            cell.ivshop.layer.masksToBounds = true
            cell.ivshop.layer.cornerRadius = cell.ivshop.frame.width/2
            cell.ivproduct.image = product.productimg
            cell.lbproductname.text = product.productname
            cell.lbprice.text = product.price
            cell.lblabel.text = product.label
            cell.lbdate.text = product.Date
            
            return cell
            
        }else{
            let cell = tableview.dequeueReusableCell(withIdentifier: "ProductdetailCell") as! ProductdetailCell
            cell.lbcontent.text = text
            return cell
        }
    }
    let text = """
   此為Hahago用戶專屬優惠，於門市結帳時請釋出優惠條碼/序號。

   使用流程：前往門市->選擇優惠商品->點開「立即使用」並向店員出示條碼->兌換成功

   各門市保留是否受理此優惠的權利及選擇權，使用前請先與門市確認，若有相關問題請與該活動廠商聯繫，Hahago僅為訊息刊登之平台。

   本優惠條碼/序號禁止以任何方式複製、販售、轉讓或公開（無論以公共形式或其他形式公佈）。
  """

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "商品詳細"
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tableview: UITableView!
    var product :Product!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! BarcodeVC
        controller.product = product
    }
    

}
