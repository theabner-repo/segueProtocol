//
//  ViewController.swift
//  SeguesEnumsProtocols
//
//  Created by Abner on 05/06/20.
//  Copyright © 2020 Abner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VCPresenterHandlerType {
    
    typealias segueId = SegueIdentifier
    typealias viewControllerId = ViewControllerIdentifier

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextVC(_ sender: UIButton) {
        performSegue(withIdentifier: .toSecond, sender: sender)
    }
    
    @IBAction func toModal1(_ sender: UIBarButtonItem) {
        presentViewController(withIdentifier: .modal1, from: .init(identifier: .modal1), animated: true, completion: nil)
    }
    
    @IBAction func toModal2(_ sender: UIBarButtonItem) {
        let vc = viewController(withIdentifier: .modal2, from: .init(identifier: .modal2))
        let nv = UINavigationController(rootViewController: vc)
        present(nv, animated: true, completion: nil)
    }
}

