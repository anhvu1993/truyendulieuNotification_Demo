//
//  ViewController.swift
//  truyendulieuNotification
//
//  Created by Anh vũ on 3/30/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class View1Controller: UIViewController {
    @IBOutlet weak var view1Label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showDataVc2(_ :)),
                                               name: .notification,
                                               object: nil)
        
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func showDataVc2(_ data: Notification) {
        if let message = data.userInfo?["message"] as? String {
            view1Label.text = message
        }
        
            
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let destination = segue.destination as? View2Controller else {return}
        destination.result = textField.text
        textField.text = ""
    }
    
    
}

