

import UIKit

var allshops = [m,city,six]
var hotshops = [m,six]
var nearshops = [m]
class MainVC: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    
    @IBOutlet weak var segmented: UISegmentedControl!
    var showcellnumbers = [Int]()
    
    var showshops = [Shop]()
    var labels = ["全部","餐飲","運動戶外","生活休閒","待分類"]
    
    @IBOutlet weak var logtableview: UITableView!
    @IBOutlet weak var tableview: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == logtableview {
            return 2
        }else{
            return showshops.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == logtableview {
            if indexPath.row == 0 {
                let cell = logtableview.dequeueReusableCell(withIdentifier: "LoglabelCell") as! LoglabelCell
                
                cell.lables = labels
                cell.segmented = segmented.selectedSegmentIndex
                cell.completionHandler = {(shops) in
                    self.showshops = shops
                    self.logtableview.reloadData()
                    self.tableview.reloadData()
                }
                
                return cell
                
            }else{
                let cell = logtableview.dequeueReusableCell(withIdentifier: "LogimageCell") as! LogimageCell
                cell.shops = showshops
                cell.collection.reloadData()
                return cell
            }
        }else{
            let cell = tableview.dequeueReusableCell(withIdentifier: "ProductCell") as! ProductCell
            let shop = showshops[indexPath.row]
            cell.ivshop.image = shop.shopimg
            cell.ivshop.layer.masksToBounds = true
            cell.ivshop.layer.cornerRadius = cell.ivshop.frame.width/2
            cell.ivproduct.image = shop.products.first?.productimg
            cell.lbshopname.text = shop.shopname
            cell.lbproductname.text = shop.products.first?.productname
            cell.lblabel.text = shop.label
            cell.lbdate.text = shop.products.first?.Date
            cell.lbprice.text = shop.products.first?.price
            
            return cell
        }
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "shop"{
            let collection = sender as! ImageCell
            
            let controller = segue.destination as! ShopVC
            controller.shop = collection.shop
        }else{
            let indexpath = tableview.indexPathForSelectedRow
            let product = showshops[(indexpath?.row)!].products.first
            let controller = segue.destination as! ProductVC
            controller.product = product
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        showshops = allshops
        let color = UIColor(displayP3Red: 8/255, green: 170/255, blue: 1, alpha: 1)
        segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: UIControl.State.normal)
        segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:color], for: UIControl.State.selected)
        
        // Do any additional setup after loading the view.
    }


    @IBAction func segmented(_ sender: UISegmentedControl) {
        let selectedSegmentIndex = sender.selectedSegmentIndex
        let cell = logtableview.cellForRow(at: IndexPath(row: 0, section: 0)) as! LoglabelCell
        switch selectedSegmentIndex {
        case 0:
            showshops = allshops
            labels = ["全部","餐飲","運動戶外","生活休閒","待分類"]
            
            break
        case 1:
            showshops = hotshops
            labels = ["全部","餐飲","生活休閒","待分類"]
            break
        case 2:
            showshops = nearshops
            labels = ["全部","餐飲"]
            break
        default:
            break
        }
        cell.i = 0
        cell.collection.reloadData()
        logtableview.reloadData()
        tableview.reloadData()
    }
    
    
}

