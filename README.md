# DMHoneyCombGrid

[![CI Status](https://img.shields.io/travis/Denis/DMHoneyCombGrid.svg?style=flat)](https://travis-ci.org/Denis/DMHoneyCombGrid)
[![Version](https://img.shields.io/cocoapods/v/DMHoneyCombGrid.svg?style=flat)](https://cocoapods.org/pods/DMHoneyCombGrid)
[![License](https://img.shields.io/cocoapods/l/DMHoneyCombGrid.svg?style=flat)](https://cocoapods.org/pods/DMHoneyCombGrid)
[![Platform](https://img.shields.io/cocoapods/p/DMHoneyCombGrid.svg?style=flat)](https://cocoapods.org/pods/DMHoneyCombGrid)

Demo app to show how to dynamically create a HoneyCombGrid of horizontally oriented hexagon shaped cells of any cell-per-side amount with autolayout.

Sample of iOS UIView for a HoneyCombGrid 2x2 with random sample background colors:

![sample](https://github.com/denismullaraj/DMHoneyCombGrid/blob/master/Screenshots/horizontal-hex-grid-2x2.png)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

DMHoneyCombGrid is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DMHoneyCombGrid'
```

## Usage
Just add it as a view and set some constraint on it as you prefer, preferably set yourself as the delegate (`HoneyCombGridDelegate`) and implement `func honeyCombTapped(on cell: UIView)` to receive individual cell taps:

```swift
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
        containerView.backgroundColor = UIColor(red: 254.0 / 255.0, green: 213.0 / 255.0, blue: 151.0 / 255.0, alpha: 1.0)
        
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
```

<br>

## Author

Denis Mullaraj, denis.mullaraj@hotmail.com

## License

DMHoneyCombGrid is available under the MIT license. See the LICENSE file for more info.
