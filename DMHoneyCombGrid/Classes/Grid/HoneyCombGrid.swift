//
//  HexView.swift
//  DMHoneyCombGrid
//
//  Created by Denis Mullaraj on 05/02/2020.
//

import UIKit


public protocol HoneyCombGridDelegate: class {
    func honeyCombTapped(on cell: UIView)
}


public class HoneyCombGrid: HexStackView {
    
    public weak var delegate: HoneyCombGridDelegate?
    
    public init(cellPerSide: Int) {
        super.init(frame: CGRect())
        self.cellPerSide = cellPerSide
        initilize()
    }
    
    private var cellPerSide: Int = 2
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initilize()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        initilize()
    }
    
    private func initilize() {
        axis = .horizontal
        alignment = .center
        distribution = .fillEqually
                
        let incrValue = cellPerSide + 1
        let cols = ((cellPerSide * 2) * 2) - 1
        
        let middleFluctuationStartIndex = incrValue + 1
        let middleFluctuationEndIndex = cols - incrValue + 1
        
        var step = 1
        var rows = 0
        var pos = 0
        
        for iCol in 1...cols {
            
            if (iCol == 1 || iCol == cols) { rows = 2 }
            else if (middleFluctuationStartIndex ... middleFluctuationEndIndex ~= iCol) {
                step = -step
                rows += step }
            else {
                if iCol > 1 && iCol <= incrValue {
                    if iCol == incrValue { rows += 1 }
                    else { rows += 3 }
                } else {
                    if iCol == middleFluctuationEndIndex + 1 { rows -= 1 }
                    else { rows -= 3 }
                }
            }
            
            let hexColumn = HexStackView()
            hexColumn.axis = .vertical
            hexColumn.alignment = .fill
            hexColumn.distribution = .fill
            addArrangedSubview(hexColumn)
            
            for _ in 1...rows {
                pos += 1
                
                let subview = UIView()
                subview.backgroundColor = UIColor.random()
                subview.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap(_:))))
                subview.tag = pos
                hexColumn.addArrangedSubview(HexView(subview: subview))
            }
        }
    }
    
    @objc private func didTap(_ tap: UITapGestureRecognizer) {
        guard let tappedView = tap.view else { return }
        delegate?.honeyCombTapped(on: tappedView)
    }
}


public class HexStackView: UIStackView {
    
    override public func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        for view in arrangedSubviews {
            if let result = view.hitTest(convert(point, to: view), with: event) {
                return result
            }
        }
        return nil
    }
}
