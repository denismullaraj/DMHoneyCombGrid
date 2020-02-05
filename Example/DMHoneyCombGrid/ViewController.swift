//
//  ViewController.swift
//  DMHoneyCombGrid
//
//  Created by Denis on 02/05/2020.
//  Copyright (c) 2020 Denis. All rights reserved.
//

import UIKit
import DMHoneyCombGrid

class ViewController: UIViewController, HoneyCombGridDelegate {

    let containerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        containerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        containerView.backgroundColor = UIColor(red: 3.0 / 255.0, green: 101.0 / 255.0, blue: 237.0 / 255.0, alpha: 1.0)
        
        loadGrid()
    }
    
    private func loadGrid() {
        let hexGrid = HoneyCombGrid(cellPerSide: 2)
        hexGrid.delegate = self
        hexGrid.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.addSubview(hexGrid)
        
        // Example of laying it out with specific constraints 300w/300h
        hexGrid.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        hexGrid.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        hexGrid.widthAnchor.constraint(equalToConstant: 300).isActive = true
        hexGrid.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }

    func honeyCombTapped(on cell: UIView) {
        print("Tapped on \(cell.tag)")
    }
    
}

