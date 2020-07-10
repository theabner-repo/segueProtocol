//
//  FourthViewController.swift
//  SeguesEnumsProtocols
//
//  Created by Abner on 05/06/20.
//  Copyright © 2020 Abner. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: UIButton) {
        
        if let viewController = (viewControllerInNavigationController { $0.isKind(of: SecondViewController.self) } ) {
            
            navigationController?.popToViewController(viewController, animated: true)
        }
        
    }
    
    
}
