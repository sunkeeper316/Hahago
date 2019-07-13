//
//  BarcodeVC.swift
//  Hahago
//
//  Created by 黃德桑 on 2019/7/13.
//  Copyright © 2019 sun. All rights reserved.
//

import UIKit

class BarcodeVC: UIViewController {

    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var lbshopname: UILabel!
    @IBOutlet weak var lbproductname: UILabel!
    @IBOutlet weak var lbprice: UILabel!
    
    var product: Product?
    var timer: Timer?
    var count = 180
    override func viewDidLoad() {
        super.viewDidLoad()

        lbprice.text = product?.price
        lbshopname.text = product?.shopname
        lbproductname.text = product?.productname
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeChanged), userInfo: nil, repeats: true)
    }
    @objc func timeChanged() {
        count -= 1
        /* 如果下載進度還沒到最大值就顯示下載進度；下載完成就顯示"Download Finished" */
        if count > 0 {
            /* 用%跳脫後面%，所以%%等於%文字。下載進度為0%~100%所以progressView的值乘以100 */
            time.text = "\(count)s"
        } else {
            time.text = "time's up"
            timer?.invalidate()
            timer = nil
        }
    }
    @IBAction func clickback(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
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
