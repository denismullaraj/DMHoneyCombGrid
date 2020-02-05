//
//  HexPath.swift
//  DMHoneyCombGrid
//
//  Created by Denis Mullaraj on 05/02/2020.
//

import UIKit

class HexPath: UIBezierPath {
    
    init(size: CGSize) {
        super.init()
        move(to: CGPoint(x: size.width * 0.0, y: size.height * 0.5))
        addLine(to: CGPoint(x: size.width * 0.25, y: size.height * 0.0))
        addLine(to: CGPoint(x: size.width * 0.75, y: size.height * 0.0))
        addLine(to: CGPoint(x: size.width * 1.0, y: size.height * 0.5))
        addLine(to: CGPoint(x: size.width * 0.75, y: size.height * 1.0))
        addLine(to: CGPoint(x: size.width * 0.25, y: size.height * 1.0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("required init?(coder:) not implemented")
    }
}
