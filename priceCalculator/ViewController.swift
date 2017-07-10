//
//  ViewController.swift
//  priceCalculator
//
//  Created by Arvin Mohanty on 7/5/17.
//  Copyright © 2017 Arvin Mohanty. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var myPrice = 0.00
   
    var costAfterWaterRepair = 1.00
    
    var costAfterBattery = 1.00
    
    var costAfterCrack = 1.00
    
    var myTotalPrice = 0.00
    
    
    @IBOutlet weak var i5s: UIButton!
    
    @IBOutlet weak var i6: UIButton!
    
    @IBOutlet weak var i5: UIButton!

    @IBOutlet weak var i6Plus: UIButton!
    
    @IBOutlet weak var i6s: UIButton!
    
    @IBOutlet weak var i6sPlus: UIButton!
    
    @IBOutlet weak var i7: UIButton!
    
    @IBOutlet weak var i7Plus: UIButton!
    
    @IBOutlet weak var waterDamage: UIButton!
    
    @IBOutlet weak var batteryDamage: UIButton!
    
    @IBOutlet weak var crackedScreen: UIButton!
    
    @IBOutlet weak var estimateButton: UIButton!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var clearButton: UIButton!
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onWaterButton(_ sender: Any)
    {
        costAfterWaterRepair = 0.85
        waterDamage.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
    }
    
    @IBAction func onBatteryButton(_ sender: Any)
    {
        costAfterBattery = 0.80
        batteryDamage.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
    }
   
    @IBAction func onCrackedScreen(_ sender: Any)
    {
        costAfterCrack = 0.65
        crackedScreen.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
    }
    

   
    @IBAction func oni5(_ sender: Any) {
        myPrice = 85.00
        i5.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }
    
    @IBAction func oni5s(_ sender: Any) {
        myPrice = 110.00
        i5s.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }

       
    @IBAction func oni6(_ sender: Any) {
        myPrice = 200.00
        i6.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }
    
   
    @IBAction func oni6Plus(_ sender: Any) {
        myPrice = 300.00
        i6Plus.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }
   
    @IBAction func oni6sPlus(_ sender: Any) {
        myPrice = 365
        i6sPlus.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }
    
    
    @IBAction func oni6s(_ sender: Any) {
        myPrice = 265.00
        i6s.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }
    
   
    @IBAction func oni7(_ sender: Any) {
        myPrice = 450.00
        i7.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }
    
    @IBAction func oni7Plus(_ sender: Any) {
        myPrice = 530.00
        i7Plus.setImage(#imageLiteral(resourceName: "checkmark"), for: UIControlState())
        disablePhoneButtons()
    }

    
    @IBAction func onEstimateClicked(_ sender: Any) {
        calculate()
    }
    func calculate(){
        let myTotalPrice = myPrice * costAfterWaterRepair * costAfterBattery * costAfterCrack
        let totalRounded = round(100.00 * myTotalPrice) / 100.00
        
        price.text = "$\(totalRounded)"
    }
    
    @IBAction func onEstimateButton(_ sender: Any)
    {
        calculate ()
    }
    
    func disablePhoneButtons()
    {
        i5.isEnabled = false
        i5s.isEnabled = false
        i6.isEnabled = false
        i6Plus.isEnabled = false
        i6s.isEnabled = false
        i6sPlus.isEnabled = false
        i7.isEnabled = false
        i7Plus.isEnabled = false
    }

    @IBAction func clearButton(_ sender: Any) {
        i5.isEnabled = true
        i5s.isEnabled = true
        i6.isEnabled = true
        i6Plus.isEnabled = true
        i6s.isEnabled = true
        i6sPlus.isEnabled = true
        i7.isEnabled = true
        i7Plus.isEnabled = true
        myPrice = 0.00
        waterDamage.setImage(#imageLiteral(resourceName: "water"), for: UIControlState())
        batteryDamage.setImage(#imageLiteral(resourceName: "ipadMini-battery-repair-replace-300x300"), for: UIControlState())
        crackedScreen.setImage(#imageLiteral(resourceName: "phone-icon"), for: UIControlState())
        i5.setImage(nil, for: UIControlState())
        i5s.setImage(nil, for: UIControlState())
        i6.setImage(nil, for: UIControlState())
        i6Plus.setImage(nil, for: UIControlState())
        i6s.setImage(nil, for: UIControlState())
        i6sPlus.setImage(nil, for: UIControlState())
        i7.setImage(nil, for: UIControlState())
        i7Plus.setImage(nil, for: UIControlState())
        
        
        
        
        
        
        
        
        costAfterWaterRepair = 1.00
        
        costAfterBattery = 1.00
        
        costAfterCrack = 1.00
        
        myTotalPrice = 0.00
    }
    
}


