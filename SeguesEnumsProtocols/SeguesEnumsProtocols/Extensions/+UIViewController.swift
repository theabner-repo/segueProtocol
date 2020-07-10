//
//  +UIViewController.swift
//  SeguesEnumsProtocols
//
//  Created by Abner on 05/06/20.
//  Copyright © 2020 Abner. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    enum ViewControllerIdentifier: String {
        case modal1 = "modal1VC"
        case modal2 = "modal2VC"
    }
    
    enum SegueIdentifier: String {
        case toSecond = "toSecondVC"
        case toThird = "toThirdVC"
        case toFourth = "toFourthVC"
    }
    
    func viewControllerInNavigationController(using closure: (UIViewController) -> Bool) -> UIViewController? {
        return navigationController?.viewControllers.filter(closure).first
    }
}
