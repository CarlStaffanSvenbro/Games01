//
//  EditConnectionVC.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-21.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class EditConnectionVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        

        W0300.Objects [W0100.L.ObjectIndex].ObjectConnections.count
        
    }
    
    @IBAction func DismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       // var txt = ViewController.This.
        var txt = W0300.Objects [W0100.L.ObjectIndex].ObjectConnections[indexPath.row].ID
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EditConnectionsVC_Cell", for: indexPath) as! EditConnectionsVC_Cell
        
        cell.ConnectionText.text = txt
        
        return cell
    }
    
    
    @IBOutlet weak var FailureDescription: UITextField!
    
    @IBAction func AddBackpackCondition(_ sender: UIButton) {
      
        var ObjectID = W0300.Objects [W0100.L.ObjectIndex].ID
        
        
        var ObjectIndex000 = W0400.ObjectsIndex(ID: ObjectID!)
        
        var ConnectionIndex000 = W0300.Objects [ObjectIndex000].ObjectConnectionIndex(ID: ConnectionIDTxt.text!)
        
        var BackPackItemIndex000: Int = W0400.ObjectsIndex(ID: BackpackItemID.text!)
        
        W0300.Objects [ObjectIndex000].ObjectConnections[ConnectionIndex000].BackpackConditions.append(W0001.BackpackConditionStruct(ObjectIndex: BackPackItemIndex000, FailureDescription: FailureDescription.text!))
    
    var code1 =
"""
        
        var ObjectIndex000 = W0400.ObjectsIndex(ID: ObjectID!)
             
             var ConnectionIndex000 = W0300.Objects [ObjectIndex000].ObjectConnectionIndex(ID: ConnectionIDTxt.text!)
             
             var BackPackItemIndex000: Int = W0400.ObjectsIndex(ID: BackpackItemID.text!)
             
             W0300.Objects [ObjectIndex000].ObjectConnections[ConnectionIndex000].BackpackConditions.append(ViewController.BackpackConditionStruct(ObjectIndex: BackPackItemIndex000, FailureDescription: FailureDescription.text!))

"""
    
        code1 = code1.replacingOccurrences(of: "ObjectID!", with: "\"" + ObjectID! + "\"")
        code1 = code1.replacingOccurrences(of: "ObjectID", with: "\"" + ObjectID! + "\"")
        code1 = code1.replacingOccurrences(of: "ConnectionIDTxt.text!", with: "\"" + ConnectionIDTxt.text! + "\"")
        code1 = code1.replacingOccurrences(of: "BackpackItemID.text!", with: "\"" + BackpackItemID.text! + "\"")
        code1 = code1.replacingOccurrences(of: "FailureDescription.text!", with: "\"" + FailureDescription.text! + "\"")
        code1 = code1.replacingOccurrences(of: "\n", with: "     \n")
        print (code1)
         W0000.GeneratedCode = W0000.GeneratedCode + code1
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
      {
        ConnectionIDTxt.text = W0300.Objects [W0100.L.ObjectIndex].ObjectConnections[indexPath.row].ID
    }
    
    @IBOutlet weak var BackpackItemID: UITextField!
    
    
    @IBOutlet weak var ConnectionIDTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
