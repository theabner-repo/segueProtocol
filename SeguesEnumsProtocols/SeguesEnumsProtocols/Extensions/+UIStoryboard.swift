//
//  +UIStoryboard.swift
//  SeguesEnumsProtocols
//
//  Created by Abner on 05/06/20.
//  Copyright © 2020 Abner. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    enum StoryboardIdentifier: String {
        case main = "Main"
        case modal1 = "Modal1"
        case modal2 = "Modal2"
    }
    
    convenience init(identifier: StoryboardIdentifier, bundle: Bundle? = nil) {
        self.init(name: identifier.rawValue, bundle: bundle)
    }
    
    func instantiateViewController(withIdentifier identifier: UIViewController.ViewControllerIdentifier) -> UIViewController {
        return instantiateViewController(identifier: identifier.rawValue)
    }
}
