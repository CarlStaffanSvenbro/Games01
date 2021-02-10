//
//  ViewController.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-17.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func OutputToConsole(_ sender: UIButton) {
        
        print("")
        print ("--------------------------")
        print (OutputTextView.text!)
        print ("--------------------------")
        print("")
        
    }
  
    
  

    
    func DisplayCode_For_CreateNewRoom()
    {
        var originalCode =
"""
//always start with one new line
       var Index_New_Room675467 = 0
       W0300.Objects.append(W0200.ObjectStruct(ID: "NewRoom675467"))
       Index_New_Room675467 =  W0400.ObjectsIndex(ID: "NewRoom675467")
       W0100.L.ObjectIndex = W0400.ObjectsIndex(ID: "NewRoom675467")
           W0300.Objects[W0100.L.ObjectIndex].ObjectInfo = "You are in the NewRoom675467."
          W0300.Objects[W0100.L.ObjectIndex].ObjectType = .Room
          Index_New_Room675467 = W0100.L.ObjectIndex
                W0300.Objects[Index_New_Room675467].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))
                W0300.Objects[Index_New_Room675467].WordCategories.append( W0001.WordCategoryStruct(ID: "noun"))
                W0300.Objects[Index_New_Room675467].WordCategories.append( W0001.WordCategoryStruct(ID: "article"))
                var Index_Temp_WordCategoryIndex =  W0300.Objects[Index_New_Room675467].WordCategoryIndex(ID: "verb")
                W0300.Objects[Index_New_Room675467].WordCategories [Index_Temp_WordCategoryIndex].Words.append("take")
                W0300.Objects[Index_New_Room675467].WordCategories [Index_Temp_WordCategoryIndex].Words.append("exit")
                Index_Temp_WordCategoryIndex =  W0300.Objects[Index_New_Room675467].WordCategoryIndex(ID: "noun")
                W0300.Objects[Index_New_Room675467].WordCategories [Index_Temp_WordCategoryIndex].Words.append("NewRoom675467")
                W0300.Objects[Index_New_Room675467].WordCategories [Index_Temp_WordCategoryIndex].Words.append("blue key")
                 Index_Temp_WordCategoryIndex =  W0300.Objects[Index_New_Room675467].WordCategoryIndex(ID: "article")
                 W0300.Objects[Index_New_Room675467].WordCategories [Index_Temp_WordCategoryIndex].Words.append("the")
          W0100.L.ObjectIndex = Index_New_Room675467
       let Index_CurrentRoom =  W0400.ObjectsIndex(ID: "CurrentRoom")
       let Index_New_Room675467 = W0400.ObjectsIndex(ID: "NewRoom675467")
       W0300.Objects[Index_CurrentRoom].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_New_Room675467,   ID: "enter the NewRoom675467", ConnectingMessage: "you enter the NewRoom675467"))
       W0300.Objects[Index_New_Room675467].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_CurrentRoom,   ID: "exit the NewRoom675467", ConnectingMessage: "you exit the NewRoom675467"))
"""
        originalCode =  originalCode.replacingOccurrences(of: "\n", with: "\n   " )
        originalCode = originalCode.replacingOccurrences(of: "CurrentRoom", with: W0300.Objects[W0100.L.ObjectIndex].ID! )
        originalCode = originalCode.replacingOccurrences(of: "675467", with: Ind.GenerateRandomNumberString(length: 6))
        print ("")
        print ( "//---------Room Template code (see below)---------")
        print (originalCode)
         W0000.GeneratedCode = W0000.GeneratedCode + originalCode
        print ( "//---------Room Template code (see above)---------")
        print ("")
    }
    
    
    
  
    
    
    
    
    
     
         //Set_695485_ID_Store_Room()
         //Connection_LivingRoom_Store_Room()

    @IBOutlet weak var OutputTextView: UITextView!
    
    
    static var This = ViewController()
    
    @IBAction func ClearLog(_ sender: UIButton) {
        ViewController.This.OutputTextView.text = ""
    }
    
    static func printT (xStr: String)
    {
        ViewController.This.OutputTextView.text =   ViewController.This.OutputTextView.text + "\n" + xStr
        let stringLength:Int = ViewController.This.OutputTextView.text!.count
        ViewController.This.OutputTextView.scrollRangeToVisible(NSMakeRange(stringLength-1, 0))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.OutputTextView.layoutManager.allowsNonContiguousLayout = false
               
               ViewController.This = self
        
        
             OutputTextView.text = ""
             // Do any additional setup after loading the view.
        return;
        
    

        var Object2Index = 0
        
        G0000.Set_54674_ID_Hallway()
        G0000.Set_675467_ID_LivingRoom()
        G0000.Connection_Hallway_LivingRoom5678()
        G0000.Set_Object_In_Hallway_ID_RedKeyInHallway()
        G0000.Set_ObjectIn_LivingRoom_537_ID_BlueKey()
        G0000.Set_695485_ID_Store_Room()
        G0000.Connection_LivingRoom_Store_Room()
        G0000.Set_988193_ID_Grand_Father()
           G0000.Connection_LivingRoom_Grand_Father5678()
        
        G0000.Set_723025_ID_Grandfather_Discussion()
        G0000.Connection_GrandFather_Grandfather_Discussion5678()

        G0000.Set_207138_ID_Grandfather_PleaseAdviceMe()
        G0000.Connection_GrandfatherDiscussion_Grandfather_PleaseAdviceMe5678()
        
        G0000.LastAddedInstructions()
        
        W0100.L.ObjectIndex = 0
        W0100.L.TempObjectConnectionIndex = 0
        
//        var cmd: String = ""
//        cmd = "take the red key"
//        SendCommand (Cmd: cmd)
//
//        cmd = "enter the living room"
//        SendCommand (Cmd: cmd)
//
//
//        cmd = "enter the store room"
//        SendCommand (Cmd: cmd)
//
//
//
//         cmd = "take the blue key"
//           SendCommand (Cmd: cmd)
//
//        cmd = "exit the store room"
//        SendCommand (Cmd: cmd)
//
//        cmd = "exit the living room"
//          SendCommand (Cmd: cmd)
//
//        cmd = "enter the office"
//        SendCommand (Cmd: cmd)
//
//        cmd = "take the key card"
//        SendCommand (Cmd: cmd)

 
        //Below we play the game
     
//        W0100.L.ObjectIndex = 0
//        W0100.L.WorldIndex = 0
//        W0100.L.TempObjectConnectionIndex = 0
//
 
//        Worlds[W0100.L.WorldIndex].W0300.Objects[W0100.L.ObjectIndex].DisplayWords()
 
//        var command = "enter the living room"
 
 
//        W0100.L.TempObjectConnectionIndex = Worlds[W0100.L.WorldIndex].W0300.Objects[W0100.L.ObjectIndex].ObjectConnectionIndex(ID: command)
//        L =  Worlds[W0100.L.WorldIndex].W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectedObjectLocation
 
//
//
 
//               command = "exit the living room"
 
 
//               W0100.L.TempObjectConnectionIndex = Worlds[W0100.L.WorldIndex].W0300.Objects[W0100.L.ObjectIndex].ObjectConnectionIndex(ID: command)
//               L =  Worlds[W0100.L.WorldIndex].W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectedObjectLocation
 
        
        
    }
    
    
    @IBAction func DismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    func replace(Cmd: String)
     {
         var Cmd = Cmd
         var replaceSubstring = "/replace "
         if Dep01.StringStartsWith(MyString: Cmd, Substring: replaceSubstring)
                             {
         
                            let subStringLen = replaceSubstring.count
                            let RemainingLength = Cmd.count - subStringLen
         
                            var RemainString = Cmd.suffix(RemainingLength - 1).lowercased()
                           
                                var ParameterArray = RemainString.components(separatedBy: ",")
                                
                                 
                             }//if
         
     }
    
    
    
 
    
    func LookAtRoom(LookAtObjectType: W0001.ObjectTypeEnum)
    {
 
        
        var itemsExist = false
            for c in W0300.Objects[W0100.L.ObjectIndex].ObjectConnections
               {
                   if W0300.Objects[c.ConnectedObjectIndex].ObjectType == LookAtObjectType
                   {
        
                      itemsExist = true
                   }
               }
        
        if itemsExist == false {
           
            switch LookAtObjectType
            {
            case .Collectable:
                do{
                    ViewController.printT (xStr: "There are no collectable items available")
                }
                
            case .Room:
                do{
                    ViewController.printT (xStr: "There are no available entries")
                }
            
            case .Individual:
                    do{
                        ViewController.printT (xStr: "There are no available people")
                    }
                
            default:
                do{
                    assert (false)
                }
            }
            
            
           
            
            ViewController.printT (xStr: "")
            return;
        }
        assert (itemsExist == true )
        
        ViewController.printT (xStr: "---------")
        for c in W0300.Objects[W0100.L.ObjectIndex].ObjectConnections
        {
            if W0300.Objects[c.ConnectedObjectIndex].ObjectType == LookAtObjectType
            {
 
                ViewController.printT (xStr: W0300.Objects[c.ConnectedObjectIndex].ObjectShortInfo)//567
            }
        }
        ViewController.printT (xStr: "---------")
        ViewController.printT (xStr: "")
    }
    
    func SendCommand(Cmd: String)
    {
 
        ViewController.printT (xStr: "> " + Cmd)
        
            if Dep01.StringStartsWith(MyString: Cmd, Substring: "/replace")
            {
                replace(Cmd: Cmd)
                return;
            }
            
        
           if Dep01.StringStartsWith(MyString: Cmd, Substring: "/read")
                {
                    ViewController.printT (xStr: W0400.ReadObjectIfPossible(Cmd: Cmd))
                    return;
                }
        
        
        
         
        
        switch Cmd
        {
            case "/cheat01":
                                do {
                                 CheatFromHallwayToBuscard()
                     }

            
        case "/look for entries":
            do {
                LookAtRoom(LookAtObjectType: .Room)
                
            }
            
            
            case "/look for people":
                do {
                    LookAtRoom(LookAtObjectType: .Individual)
                    
                }
            
            
        case "/look for items":
            do {LookAtRoom(LookAtObjectType: .Collectable)}
            
        case "/add room":
            do{DisplayCode_For_CreateNewRoom()}
            
        case "/backpack":
                       do {
                        ViewController.printT (xStr: W0400.GetBackpackInventory())
                       }
        
            case "/list":
                           do {
                                ViewController.printT (xStr: "Room ID:" + W0300.Objects[W0100.L.ObjectIndex].ID!)
                                ViewController.printT (xStr: "")
                           }
            
            
        case "/location":
            do {
                ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectInfo)
                ViewController.printT (xStr: "")
            }
          
        case "/words":
                do {
                    
                    print (W0300.Objects[W0100.L.ObjectIndex].WordCategories.count)
                    print (W0300.Objects[W0100.L.ObjectIndex].ID!)
                    ViewController.printT  (xStr: W0300.Objects[W0100.L.ObjectIndex].GetWords())
                    ViewController.printT (xStr: "")
                }
            
             
        default:
            do {
                
                W0100.L.TempObjectConnectionIndex = W0300.Objects[W0100.L.ObjectIndex].ObjectConnectionIndex(ID: Cmd)
                //ViewController.printT (xStr: W0100.L.TempObjectConnectionIndex)
                //ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ID!)
                // ViewController.printT (xStr:  W0100.L.ObjectIndex )
               // ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections [ W0100.L.TempObjectConnectionIndex].ConnectedObjectIndex)
                
                if W0100.L.TempObjectConnectionIndex == -1
                {
                    ViewController.printT (xStr: "Wrong command")
                    ViewController.printT (xStr: "")
                }//if W0100.L.TempObjectConnectionIndex == -1
                else
                {
                    
                    
                    var DestinationObjectIndex = W0300.Objects[W0100.L.ObjectIndex].ObjectConnections [ W0100.L.TempObjectConnectionIndex].ConnectedObjectIndex
                    if DestinationObjectIndex == -2 {DestinationObjectIndex =  W0400.ObjectsIndex(ID: W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn)}
                    
                    if W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn == "" {W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn = W0300.Objects[DestinationObjectIndex].RootIDForReturn}
                    
                    if W0300.Objects[DestinationObjectIndex].RootIDForReturn == "" {W0300.Objects[DestinationObjectIndex].RootIDForReturn = W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn}
                   
                 //   ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ID)
                    //ViewController.printT (xStr:  W0100.L.ObjectIndex )
                    
                    if W0300.Objects[DestinationObjectIndex].ObjectType == .Room
                    {
            
                        var BackpackValidationSuccessful = true
                        var FailureMessage: String = ""
                        
//                        ViewController.printT (xStr: W0100.L.ObjectIndex)
//                        ViewController.printT (xStr: W0100.L.TempObjectConnectionIndex)
                        
                        //only 1 failure reason is displayed. For example, if a room requires two different keys to enter,
                        //only the error message for one of the red keys is displayed.
                        for c in W0300.Objects[W0100.L.ObjectIndex].ObjectConnections [ W0100.L.TempObjectConnectionIndex].BackpackConditions
                        {
                            var conditionMet = false
                            
                            
                            for b in W0200.BackPackContent.BackPackItems
                            {
                                if b.ObjectIndex == c.ObjectIndex {conditionMet = true}
                            }
                            if conditionMet == false && BackpackValidationSuccessful == true {
                                BackpackValidationSuccessful = false
                                FailureMessage = c.FailureDescription
                                
                            }
                        }
                        
                        
                        if (BackpackValidationSuccessful == false) {
                            ViewController.printT (xStr: FailureMessage)
                            ViewController.printT (xStr: "")//4536346
                            return;
                        }
                        
                        ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                        
                        W0100.L.ObjectIndex =  DestinationObjectIndex
                        ViewController.printT (xStr: "")
                    }
                    
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .Collectable
                    {
                        W0200.BackPackContent.BackPackItems.append(W0001.BackPackItemStruct(ObjectIndex: DestinationObjectIndex))
                        W0300.Objects[DestinationObjectIndex].ObjectType = .Collected
                        ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                        ViewController.printT (xStr: "")
                    }
                        
                        
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .Individual
                        {
                            
                            ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                            W0100.L.ObjectIndex =  DestinationObjectIndex
                            ViewController.printT (xStr: "")
                        }
                    
                        
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .IndividualLocalConversation
                                         {
 
                                             ViewController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                                             ViewController.printT (xStr: "")
                                         }
                        
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .Collected
                                                                {
                        
                                                                    ViewController.printT (xStr: "you have already taken this item")
                                                                    ViewController.printT (xStr: "")
                                                                }
                        
                        
                    else
                    {
                        ViewController.printT (xStr: "the action cannot be completed")
                        ViewController.printT (xStr: "")
                          //assert (false)
                    }
                    
                }//else
                
                
                
            }
            
        }// switch Cmd
    }
    
 
    
    @IBOutlet weak var CommandTextField: UITextField!
    
    
    @IBAction func ConfirmCommand(_ sender: UIButton) {
        SendCommand(Cmd: CommandTextField.text!)
        CommandTextField.text = ""
        
    }
    
    
    @IBAction func printcode(_ sender: UIButton) {
        let x = W0400.GeneratedCode
        print (W0400.GeneratedCode)
        
    }
    
    func CheatFromHallwayToBuscard()
       
    {
                      

       }
     
  
    
}

