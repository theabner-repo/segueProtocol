//
//  Protocols.swift
//  SeguesEnumsProtocols
//
//  Created by Abner on 05/06/20.
//  Copyright © 2020 Abner. All rights reserved.
//

import Foundation
import UIKit

protocol VCPresenterHandlerType {
    
    associatedtype segueId: RawRepresentable
    associatedtype viewControllerId: RawRepresentable
    
    func segueIdentifier(for segue: UIStoryboardSegue) -> segueId
}

extension VCPresenterHandlerType where Self: UIViewController, segueId.RawValue == String {
    
    func performSegue(withIdentifier identfier: segueId, sender: Any?) {
        performSegue(withIdentifier: identfier.rawValue, sender: sender)
    }
    
    func segueIdentifier(for segue: UIStoryboardSegue) -> segueId {
        guard let identifier = segue.identifier, let segueIdentifier = segueId(rawValue: identifier) else { fatalError("Invalid identifier for  segue: \(segue.identifier ?? "")") }
        return segueIdentifier
    }
}

extension VCPresenterHandlerType where Self: UIViewController, viewControllerId.RawValue == String {
    
    func presentViewController(withIdentifier identifier: viewControllerId, from sb: UIStoryboard? = nil, animated: Bool, completion: (() -> Void)?) {
        var vc: UIViewController
        if let sb = sb {
            vc = sb.instantiateViewController(withIdentifier: identifier.rawValue)
            present(vc, animated: animated, completion: completion)
        } else {
            guard let viewController = storyboard?.instantiateViewController(withIdentifier: identifier.rawValue) else { fatalError("Invalid identifier for View Controller: \(identifier.rawValue)") }
            present(viewController, animated: animated, completion: completion)
        }
    }
    
    func viewController(withIdentifier identifier: viewControllerId, from sb: UIStoryboard? = nil) -> UIViewController {
        var vc: UIViewController
        if let sb = sb {
            vc = sb.instantiateViewController(withIdentifier: identifier.rawValue)
        } else if let storyboard = storyboard {
            vc = storyboard.instantiateViewController(withIdentifier: identifier.rawValue)
        } else {
            fatalError("Somethig went wrong")
        }
        return vc
    }
    
}
