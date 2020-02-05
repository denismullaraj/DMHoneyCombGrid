//
//  UIColor+Ext.swift
//  DMHoneyCombGrid
//
//  Created by Denis Mullaraj on 05/02/2020.
//

import UIKit

extension UIColor {
    static func random () -> UIColor {
        return UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: 1.0)
    }
}
