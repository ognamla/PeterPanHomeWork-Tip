//
//  ViewController.swift
//  PeterPanHomeWork-Tip
//
//  Created by Ognam.Chen on 2017/2/22.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var priceTextField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBAction func tipSlider(_ sender: Any) {
        tipSlider.minimumValue = 0
        tipSlider.maximumValue = 10
        let step:Float = 10
        tipLabel.text = String(roundf((tipSlider.value) * step) / step) + "%"
    }
    
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var peopleSlider: UISlider!
    @IBAction func peopleSlider(_ sender: Any) {
        
        peopleSlider.minimumValue = 1
        peopleSlider.maximumValue = 100
        
        peopleLabel.text = String(Int(roundf(peopleSlider.value)))
    }
    
    @IBAction func calculationButtom(_ sender: Any) {
       
        if Float(priceTextField.text!) != nil {
            
            let step:Float = 10
            let tipsPrice = ((roundf((tipSlider.value) * step) / step) / 100) + 1
            let tipsPercent = ((roundf((tipSlider.value) * step) / step) / 100)
            print(tipsPrice)
            let people = (roundf(peopleSlider.value))
            print(people)
            let price = Float(priceTextField.text!)!
            
            totalPriceLabel.text = String(tipsPrice * people * price)
            totalTipsLabel.text = String(tipsPercent * people * price)
        } else {
            totalPriceLabel.text = "Please enter number!"
        }
        
        
        
    }
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var totalTipsLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

