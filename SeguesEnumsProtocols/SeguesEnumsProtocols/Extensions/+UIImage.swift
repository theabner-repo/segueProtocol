//
//  +UIImage.swift
//  SeguesEnumsProtocols
//
//  Created by Abner on 05/06/20.
//  Copyright © 2020 Abner. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    enum AssetIdentifier: String {
        case perro = "perro"
        case gato = "gato"
    }
    
    convenience init!(assetIdentifier identifier: AssetIdentifier) {
        self.init(named: identifier.rawValue)
    }
}
