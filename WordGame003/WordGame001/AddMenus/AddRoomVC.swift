//
//  AddRoomVC.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-21.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class AddRoomVC: UIViewController {
    @IBAction func DismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClearExitConnectionMessage(_ sender: UIButton) {
        ExitConnetionMessage.text = ""
    }
    @IBOutlet weak var ExitConnetionMessage: UITextField!
    @IBOutlet weak var RoomID: UITextField!
    
    @IBOutlet weak var EntryPhrase: UITextField!
    
    @IBOutlet weak var ShortInfo: UITextField!
    
    @IBOutlet weak var ExitPhrase: UITextField!
    @IBOutlet weak var ObjectInfoTxt: UITextField!
    
    @IBAction func ClearConnectingMessage(_ sender: UIButton) {
        ConnectingMessage.text = ""
        
        
    }
    @IBAction func ClearShortInfo(_ sender: UIButton) {
        ShortInfo.text = ""
    }
    
    
    @IBAction func ClearExitPhrase(_ sender: UIButton) {
        ExitPhrase.text = ""
    }
    
    @IBAction func ClearObjectInfo(_ sender: UIButton) {
        ObjectInfoTxt.text = ""
    }
    
    @IBAction func ClearEntryPhrase(_ sender: UIButton) {
        EntryPhrase.text = ""
    }
    @IBOutlet weak var ConnectingMessage: UITextField!
    
    
    
    @IBAction func Autofill(_ sender: UIButton) {
        RoomID.text = ShortInfo.text! + "_index"
        ObjectInfoTxt.text = "you are in the " + ShortInfo.text!
        EntryPhrase.text = "enter the " + ShortInfo.text!
        ConnectingMessage.text = "you enter the " + ShortInfo.text!
        ExitPhrase.text = "exit the " + ShortInfo.text!
        ExitConnetionMessage.text = "you exit the " + ShortInfo.text!
        
        
        
        
        
    }
    
    
    
    @IBAction func ProcessRoom(_ sender: UIButton) {
        var ObjectID = W0300.Objects[W0100.L.ObjectIndex].ID
            var Temp0001ObjectIndex: Int = 0
            var Temp0001NewObjectIndex: Int = 0
        
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: ObjectID!);
             
        W0300.Objects.append (W0200.ObjectStruct(ID: RoomID.text))
        
        Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: RoomID.text!)
        
        W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = ObjectInfoTxt.text!
        W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = ShortInfo.text!
        W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Room
        
        W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: EntryPhrase.text!, ConnectingMessage: ConnectingMessage.text! ))
        
        var code1 =
"""

Temp0001ObjectIndex = W0400.ObjectsIndex(ID: ObjectID!);
          
     W0300.Objects.append (W0200.ObjectStruct(ID: RoomID.text))
     
     Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: RoomID.text!)
     
     W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = ObjectInfoTxt.text!
     W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = ShortInfo.text!
     W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Room
     
     W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: EntryPhrase.text!, ConnectingMessage: ConnectingMessage.text! ))

"""
        
       
        
 
        if !((Ind.leftStr(1, MyString: ExitPhrase.text!) == "<" ||  ExitPhrase.text == ""))
        {
            //if there is an exit phrase, then...
            
            W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001ObjectIndex, ID: ExitPhrase.text!, ConnectingMessage: ExitConnetionMessage.text! ))
            
            code1 = code1 +
"""
            
W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001ObjectIndex, ID: ExitPhrase.text!, ConnectingMessage: ExitConnetionMessage.text! ))
            
"""
            
            
        }
        
        code1 = code1.replacingOccurrences(of: "ObjectID!", with: "\"" + ObjectID! + "\"")
               code1 = code1.replacingOccurrences(of: "RoomID.text!", with: "\"" + RoomID.text! + "\"")
         code1 = code1.replacingOccurrences(of: "RoomID.text", with: "\"" + RoomID.text! + "\"")
               code1 = code1.replacingOccurrences(of: "ObjectInfoTxt.text!", with: "\"" + ObjectInfoTxt.text! + "\"")
               code1 = code1.replacingOccurrences(of: "ShortInfo.text!", with: "\"" + ShortInfo.text! + "\"")
               code1 = code1.replacingOccurrences(of: "EntryPhrase.text!", with: "\"" + EntryPhrase.text! + "\"")
               code1 = code1.replacingOccurrences(of: "ConnectingMessage.text!", with: "\"" + ConnectingMessage.text!  + "\"")
        code1 = code1.replacingOccurrences(of: "ExitPhrase.text!", with: "\"" + ExitPhrase.text!  + "\"")
        code1 = code1.replacingOccurrences(of: "ExitConnetionMessage.text!", with: "\"" + ExitConnetionMessage.text!  + "\"")
        code1 = code1.replacingOccurrences(of: "\n", with: "     \n")
        print (code1)
        W0000.GeneratedCode = W0000.GeneratedCode + code1
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
