//
//  ViewController.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 20/12/21.
//

import UIKit
import TextFieldEffects

class ViewController: UIViewController {
    // Textfil
    @IBOutlet weak var textFieldUserName: UITextField!

    @IBOutlet weak var textFieldPassword: UITextField!

    @IBOutlet weak var textFieldMerchant: UITextField!
    // button
    @IBOutlet weak var buttonSubmit: UIButton!

    @IBOutlet weak var nvHome: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButtonSubmit(_ sender: Any) {
        //performSegue(withIdentifier: "vcCenPOS", sender: self)
        if let user  = textFieldUserName.text,let  password = textFieldPassword.text,let merchantid = textFieldMerchant.text{
            Ado.shared.getUser(user: user, pass: password, merchantId: merchantid)
                performSegue(withIdentifier: "vcCenPOS", sender: self)
        }
    }
}
