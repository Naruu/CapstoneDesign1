//
//  ViewController.swift
//  MarsHousePrediction
//
//  Created by Release on 2018. 5. 23..
//  Copyright © 2018년 Hyelee Lee. All rights reserved.
//

import UIKit

enum Feature : Int {
    case solarPanels = 0, greenhouses, size }


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let pickerDataSource = PickerDataSource()
    
    @IBOutlet weak var pickerView: UIPickerView! {
        didSet{
            pickerView.delegate = self
            pickerView.dataSource = self
            let features: [Feature] = [.solarPanels, .greenhouses, . size]
            
            for feature in features {
                pickerView.selectRow(2, inComponent: feature.rawValue, animated: false)
                
                print("feature.rawValue=",feature.rawValue)
            }
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        switch Feature(rawValue: component)!{
        case .solarPanels:  return solarPanelsDataSource.values.count
        case .greenhouses:  return greenhousesDataSource.values.count
        case .size:         return sizeDataSource.values.count
            
        }
    }
    
 ≈
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        guard let feature = Feature(rawValue: component) else{
            fatalError("Invalid component \(component) found to represent a \(Feature.self).")
        }
        return self.title(for: row, feature: feature)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Selected row = ", row)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

