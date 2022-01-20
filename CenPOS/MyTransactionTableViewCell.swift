//
//  MyTransactionTableViewCell.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 19/1/22.
//

import UIKit

class MyTransactionTableViewCell: UITableViewCell {
    @IBOutlet weak var lblReferenceNumber: UILabel!
    @IBOutlet weak var lblCardNumber: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblResponse: UILabel!
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblCount: UILabel!
    @IBOutlet weak var lblCantidad: UILabel!
    @IBOutlet weak var lblApproved: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
