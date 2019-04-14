//
//  View2Controller.swift
//  truyendulieuNotification
//
//  Created by Anh vũ on 3/30/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {
   
   
    @IBOutlet weak var textField2: UITextField!
     @IBOutlet weak var textlabel2: UILabel!
    var result:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if result != nil {
            textlabel2.text = result
        }
    }
    
    
   
    @IBAction func run(_ sender: Any) {
        NotificationCenter.default.post(name: .notification,
                                        object: nil,
                                        userInfo: ["message": textField2.text!])
        navigationController?.popToRootViewController(animated: true)
    }

}
