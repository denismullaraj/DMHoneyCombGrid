//
//  HexView.swift
//  DMHoneyCombGrid
//
//  Created by Denis Mullaraj on 05/02/2020.
//

import UIKit

class HexView: UIView {
    
    let subview: UIView
    
    private var hexPath: HexPath! {
        didSet {
            let mask = CAShapeLayer()
            mask.path = hexPath.cgPath
            subview.layer.mask = mask
        }
    }
    
    init(subview: UIView) {
        self.subview = subview
        super.init(frame: subview.frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.866025404).isActive = true
        
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        subview.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        subview.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        subview.heightAnchor.constraint(equalTo: subview.widthAnchor, multiplier: 0.866025404).isActive = true
    }
    
    private override init(frame: CGRect) {
        fatalError("init(frame:) not implemented")
    }
    
    private init() {
        fatalError("init() not implemented")
    }
    
    required init?(coder: NSCoder) {
        fatalError("required init?(coder:) not implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        hexPath = HexPath(size: subview.bounds.size)
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let point = convert(point, to: subview)
        return hexPath.contains(point) ? subview : nil
    }
}
