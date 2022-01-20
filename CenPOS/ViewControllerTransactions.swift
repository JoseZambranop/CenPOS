//
//  ViewControllerTransactions.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 20/12/21.
//

import UIKit
import DropDown

class ViewControllerTransactions: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var vDateTransactions: UIView!
    @IBOutlet weak var vTransactionsType: UIView!

    @IBOutlet weak var lblTransactionsType: UILabel!
    @IBOutlet weak var lblDateTransactions: UILabel!

    @IBOutlet weak var tableViewTransactions: UITableView!
    @IBOutlet weak var btnActionSubmit: UIButton!
    
    let numbersArray = ["Today", "Last 7 Days", "Last 30 Days"]
    let type = ["normal","ca"]
    private let myTransactions = Transaction.shared
    let dropDown = DropDown()
    let dropDown2 = DropDown()
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDateTransactions.text = "Selection item"
        dropDown.anchorView = vDateTransactions
        dropDown.dataSource = numbersArray
        dropDown.backgroundColor = .blue
        dropDown.textColor = .white
        dropDown.selectionBackgroundColor = .blue
        dropDown.selectedTextColor = .white
        dropDown.bottomOffset = CGPoint(x:0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x:0, y: -(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
        dropDown.selectionAction = {[unowned self](index: Int, item: String ) in print("Selected item: \(item) at index: \(index)")
            self.lblDateTransactions.text = numbersArray[index]
        }

        lblTransactionsType.text = "Transaction Type"
        dropDown2.anchorView = vTransactionsType
        dropDown2.dataSource = type
        dropDown2.backgroundColor = .blue
        dropDown2.textColor = .white
        dropDown2.selectionBackgroundColor = .blue
        dropDown2.selectedTextColor = .white
        dropDown2.bottomOffset = CGPoint(x:0, y:(dropDown2.anchorView?.plainView.bounds.height)!)
        dropDown2.topOffset = CGPoint(x:0, y: -(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown2.direction = .bottom
        dropDown2.selectionAction = {[unowned self](index: Int, item: String ) in print("Selected item: \(item) at index: \(index)")
            self.lblTransactionsType.text = type[index]
        }
    }
    
    @IBAction func actionButtonDateTransactions(_ sender: Any) {
        dropDown.show()
    }
    
    @IBAction func btnActionSubmit(_ sender: Any) {
        Ado.shared.getTransactions()
        let va = myTransactions.transactionType
        tableViewTransactions.dataSource = self
        self.tableViewTransactions.register(UINib(nibName: "MyTransactionTableViewCell",bundle: nil), forCellReuseIdentifier: "mycell")
        //performSegue(withIdentifier: "vcCenPOS", sender: self)
        /*if let user  = textFieldUserName.text,let  password = textFieldPassword.text,let merchantid = textFieldMerchant.text{
            
        }*/
    }
    @IBAction func actionButtonTransactionType(_ sender: Any) {
        dropDown2.show()
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
        //return myTransactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            if cell == nil{
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            }

            //cell!.textLabel?.text = myTransactions[indexPath.row]
            return cell!
        }
            let cell = self.tableViewTransactions.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as?  MyTransactionTableViewCell
        //cell?.lblReferenceNumber.text = Transact
            return cell!
    }
}
