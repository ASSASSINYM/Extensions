//
//  UIViewController+SGExtension.swift
//  SGExtensions
//
//  Created by kingsic on 2020/8/25.
//  Copyright © 2020 kingsic. All rights reserved.
//

import UIKit

extension UIViewController {
    ///
    /// Set navigation bar title color and size
    ///
    /// - parameter color: Title color
    /// - parameter font: Title font
    ///
    func sg_setNavigationBarTitle(color: UIColor, font: UIFont) {
        let dict = [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: font]
        self.navigationController?.navigationBar.titleTextAttributes = dict
    }
    
    ///
    /// Return to the specified controller
    ///
    /// With return animation
    ///
    /// - parameter aClass: Specifies the controller class
    ///
    func sg_popToViewController(aClass: AnyClass) {
        sg_popToViewController(aClass: aClass, animated: true)
    }
    ///
    /// Return to the specified controller
    ///
    /// - parameter aClass: Specifies the controller class
    /// - parameter animated: Returns whether animation is required
    ///
    func sg_popToViewController(aClass: AnyClass, animated: Bool) {
        for vc in (self.navigationController?.viewControllers)! {
            if vc.isKind(of: aClass) {
                self.navigationController?.popToViewController(vc, animated: animated)
            }
        }
    }
}
