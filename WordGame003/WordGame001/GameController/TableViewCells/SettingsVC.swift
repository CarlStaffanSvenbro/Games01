//
//  SettingsVC.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-23.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    
    
    @IBAction func ResetTheGame(_ sender: UIButton) {
        
        dismiss(animated: true, completion: {GameController.This.SetupWorld()})
    }
    
    
    
    @IBOutlet weak var WarningField: UITextView!
    
    
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            W0000.SectionCollapseEnabled = true
        } else {
             W0000.SectionCollapseEnabled = false
        }
    }
    
    
     @objc func stateSmallSizeChanged(switchState: UISwitch) {
        if switchState.isOn {
            W0000.SmallSizeTable = true
        } else {
            W0000.SmallSizeTable = false
        }
    }
    
    
    @IBAction func pressedStateSmallSize(_ sender: UISwitch) {
  
           if stateSmallSize.isOn {
       
                  stateSmallSize.setOn(false, animated:true)
              } else {
    
                  stateSmallSize.setOn(true, animated:true)
              }
           
    
    }
    
    @IBOutlet weak var stateSmallSize: UISwitch!
    
    @IBOutlet weak var stateSwitch: UISwitch!
    
    @IBAction func pressedSwitch(_ sender: UISwitch) {
        
        if stateSwitch.isOn {
    
               stateSwitch.setOn(false, animated:true)
           } else {
 
               stateSwitch.setOn(true, animated:true)
           }
        
    }
    
    
    @IBAction func DismissButton(_ sender: UIButton) {
        W0400.TableView_GenerateItemArray(ObjectIndex: W0400.L.ObjectIndex)
        GameController.This.MyTableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        WarningField.text = ""
        // Do any additional setup after loading the view.
         stateSmallSize.addTarget(self, action: #selector(stateSmallSizeChanged), for: .valueChanged)
        
        stateSmallSize.setOn(W0000.SmallSizeTable, animated:true)
        
        
        
        stateSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
              
              stateSwitch.setOn(W0000.SectionCollapseEnabled, animated:true)
        
        WarningField.text = Warnings10.GetTotalWarningMessage()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
