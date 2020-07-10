//
//  ThirdViewController.swift
//  SeguesEnumsProtocols
//
//  Created by Abner on 05/06/20.
//  Copyright © 2020 Abner. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, VCPresenterHandlerType {
    
    typealias segueId = SegueIdentifier
    typealias viewControllerId = ViewControllerIdentifier

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextVC(_ sender: UIButton) {
        performSegue(withIdentifier: .toFourth, sender: sender)
    }

}
