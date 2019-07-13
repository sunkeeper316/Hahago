//
//  PcontentCell.swift
//  Hahago
//
//  Created by 黃德桑 on 2019/7/13.
//  Copyright © 2019 sun. All rights reserved.
//

import UIKit

class PcontentCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var ivproduct: UIImageView!
    @IBOutlet weak var ivshop: UIImageView!
    @IBOutlet weak var lbshop: UILabel!
    @IBOutlet weak var lbproductname: UILabel!
    @IBOutlet weak var lbprice: UILabel!
    @IBOutlet weak var lbdate: UILabel!
    @IBOutlet weak var lblabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
