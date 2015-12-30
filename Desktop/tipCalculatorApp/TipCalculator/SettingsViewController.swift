//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by The Boss on 12/13/15.
//  Copyright © 2015 The Boss. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UISegmentedControl!
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Settings View did laod")
    
        defaultTip.selectedSegmentIndex = defaults.integerForKey("currentDefault")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22]
        let choice = tipPercentages[defaultTip.selectedSegmentIndex]
        
        defaults.setDouble(choice, forKey: "default")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
