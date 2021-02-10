//
//  GameController.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-17.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class GameController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return W0400.TableView_RowItemArray.count
    }
    
 
    
 func CategoryHeadingSelected(indexPath: IndexPath)
 {
    let sendertag = indexPath.row
    if (!W0000.SectionCollapseEnabled) {return;}
 
          var WC = W0400.TableView_RowItemArray [sendertag].WordCategoryIndex
           
          W0400.Objects[W0400.L.ObjectIndex].WordCategories[WC].IsCollapsedInTable = !W0400.Objects[W0400.L.ObjectIndex].WordCategories[WC].IsCollapsedInTable
          
           if !W0000.SectionCollapseEnabled {W0400.Objects[W0400.L.ObjectIndex].WordCategories[WC].IsCollapsedInTable = false}
           
           W0400.TableView_GenerateItemArray(ObjectIndex: W0400.L.ObjectIndex)
           MyTableView.reloadData()
    }
    
    
 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        var sendertag = indexPath.row
        if W0400.TableView_RowItemArray [indexPath.row].IsCategoryHeading {
            CategoryHeadingSelected(indexPath: indexPath)
            return;} //heading, e.g. verb
        if W0400.TableView_RowItemArray [indexPath.row].WordCategoryIndex == -1 {return;} //empty row
        
        if CommandTextField.text! == ""
               {
                   CommandTextField.text = W0400.TableView_RowItemArray [sendertag].Heading
               }
               else
               {
               CommandTextField.text = CommandTextField.text! + " " + W0400.TableView_RowItemArray [sendertag].Heading
               }
               
               
               var WC = W0400.TableView_RowItemArray [sendertag].WordCategoryIndex
               
        
                   if W0000.SectionCollapseEnabled {
                       
                       for c in W0400.Objects[W0400.L.ObjectIndex].WordCategories.indices
                       {
                           W0400.Objects[W0400.L.ObjectIndex].WordCategories[c].IsCollapsedInTable = true
                       }
         
               }
        
               
               W0400.TableView_GenerateItemArray(ObjectIndex: W0400.L.ObjectIndex)
               MyTableView.reloadData()

        
    }
    
    
    @IBAction func PlusButtonPressed(_ sender: UIButton) {
    
        if CommandTextField.text! == ""
        {
            CommandTextField.text = W0400.TableView_RowItemArray [sender.tag].Heading
        }
        else
        {
        CommandTextField.text = CommandTextField.text! + " " + W0400.TableView_RowItemArray [sender.tag].Heading
        }
        
        
        var WC = W0400.TableView_RowItemArray [sender.tag].WordCategoryIndex
        
 
            if W0000.SectionCollapseEnabled {
                
                for c in W0400.Objects[W0400.L.ObjectIndex].WordCategories.indices
                {
                    W0400.Objects[W0400.L.ObjectIndex].WordCategories[c].IsCollapsedInTable = true
                }
  
        }
 
        
        W0400.TableView_GenerateItemArray(ObjectIndex: W0400.L.ObjectIndex)
        MyTableView.reloadData()

        
        
    }
    
    
    
    
    @IBAction func CollapseOrExpandSection(_ sender: UIButton) {
  
        if (!W0000.SectionCollapseEnabled) {return;}
 
       var WC = W0400.TableView_RowItemArray [sender.tag].WordCategoryIndex
        
       W0400.Objects[W0400.L.ObjectIndex].WordCategories[WC].IsCollapsedInTable = !W0400.Objects[W0400.L.ObjectIndex].WordCategories[WC].IsCollapsedInTable
       
        if !W0000.SectionCollapseEnabled {W0400.Objects[W0400.L.ObjectIndex].WordCategories[WC].IsCollapsedInTable = false}
        
        W0400.TableView_GenerateItemArray(ObjectIndex: W0400.L.ObjectIndex)
        MyTableView.reloadData()
        
    }
    
    //4756949123
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //if category headin (verb, noun etc)
        
        if W0100.TableView_RowItemArray [indexPath.row].WordCategoryIndex == -1 //empty row
        {
             return UITableViewCell();
        }// if W0100.TableView_RowItemArray [indexPath.row].WordCategoryIndex == -1
        
        if W0100.TableView_RowItemArray [indexPath.row].IsCategoryHeading
        {
            
            var IdentifierStr = "WordCategoryCell"
            if W0000.SmallSizeTable {IdentifierStr = "WordCategoryCellSMALL"}
            
              let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierStr, for: indexPath) as! WordCategoryCell
            cell.Heading.text = W0400.TableView_RowItemArray [indexPath.row].Heading
            
            
           
            var WC = W0100.TableView_RowItemArray [indexPath.row].WordCategoryIndex
            
            cell.ExpandCollapseButton.tag = indexPath.row
            
            if W0400.Objects [W0400.L.ObjectIndex].WordCategories [WC].IsCollapsedInTable
            {
                cell.ExpandCollapseButton.isSelected = true
                
            }
            else
            {
                if W0000.SectionCollapseEnabled
                {
                 cell.ExpandCollapseButton.isSelected = false
                }
            }
            
            return cell;
        }//if W0100.TableView_RowItemArray [indexPath.row].IsCategoryHeading
        
        
        //if NOT category heading (run, ball etc)
        if !W0100.TableView_RowItemArray [indexPath.row].IsCategoryHeading
        {
            
            var IdentifierStr = "WordCell"
                     if W0000.SmallSizeTable {IdentifierStr = "WordCellSMALL"}
            
            let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierStr, for: indexPath) as! WordCell
                       cell.Heading.text = W0400.TableView_RowItemArray [indexPath.row].Heading
            
            cell.WordAddButton.tag = indexPath.row
            
            return cell;
        }//if W0100.TableView_RowItemArray [indexPath.row].IsCategoryHeading
        
        return UITableViewCell();
        
    }
    

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
        
        W0000.GeneratedCode = W0000.GeneratedCode + originalCode
        
        print (originalCode)
        print ( "//---------Room Template code (see above)---------")
        print ("")
    }
    
    
    
  
    
    
    
    
    
     
         //Set_695485_ID_Store_Room()
         //Connection_LivingRoom_Store_Room()

  
    
    
    @IBOutlet weak var OutputTextView: UITextView!
    
    
    static var This = GameController()
    
    @IBAction func ClearLog(_ sender: UIButton) {
        GameController.This.OutputTextView.text = ""
    }
    
    static func printT (xStr: String)
    {
        GameController.This.OutputTextView.text =   GameController.This.OutputTextView.text + "\n" + xStr
        let stringLength:Int = GameController.This.OutputTextView.text!.count
        GameController.This.OutputTextView.scrollRangeToVisible(NSMakeRange(stringLength-1, 0))
    }
    
 
    @IBAction func DeleteButton(_ sender: UIButton) {
        CommandTextField.text = ""
    }
    
    
    func SetupWorld()
    {
        
        if Warnings10.Warning_AllowKeypadInputCommandBox
        {
            CommandTextField.isUserInteractionEnabled = true
        }
        
        W0400.StaticReset0400()
          CommandTextField.text = ""
                self.OutputTextView.layoutManager.allowsNonContiguousLayout = false
                
                GameController.This = self
                OutputTextView.text = ""
                // Do any additional setup after loading the view.

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
                
                //65475468
                W0400.TableView_GenerateItemArray(ObjectIndex: W0100.L.ObjectIndex)
                
        
                
        
                print ("")
                print ("---Start Test of TableView_GenerateItemArray")
                for R in W0400.TableView_RowItemArray
                {
                    print (R)
                    print("")
                }
                print ("--End Test of TableView_GenerateItemArray")
                print ("")
                
        //we can test the automatic check by changing living room to living;room below.
        //"enter;the;living room" and "enter;the;livin;room" both result in the same
        //string after removal of ;
 

        W0400.TableView_GenerateItemArray(ObjectIndex: W0400.L.ObjectIndex)
        
        MyTableView.reloadData()
        
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       SetupWorld()
        
        
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
    
    
    func LookAtRoomIndividualOrConversation( )
       {
    
           
           var itemsExist = false
               for c in W0300.Objects[W0100.L.ObjectIndex].ObjectConnections
                  {
                    if W0300.Objects[c.ConnectedObjectIndex].ObjectType == .Individual || W0300.Objects[c.ConnectedObjectIndex].ObjectType == .IndividualLocalConversation
                      {
           
                         itemsExist = true
                      }
                  }
           
           if itemsExist == false {
                  GameController.printT (xStr: "There are no available people")
 
                
 
               GameController.printT (xStr: "")
               return;
           }
           assert (itemsExist == true )
           
           GameController.printT (xStr: "---------")
           for c in W0300.Objects[W0100.L.ObjectIndex].ObjectConnections
           {
            if W0300.Objects[c.ConnectedObjectIndex].ObjectType == .Individual || W0300.Objects[c.ConnectedObjectIndex].ObjectType == .IndividualLocalConversation
               {
    
                   GameController.printT (xStr: W0300.Objects[c.ConnectedObjectIndex].ObjectShortInfo)//567
               }
           }
           GameController.printT (xStr: "---------")
           GameController.printT (xStr: "")
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
                    GameController.printT (xStr: "There are no collectable items available")
                }
                
            case .Room:
                do{
                    GameController.printT (xStr: "There are no available entries")
                }
            
            case .Individual:
                    do{
                        GameController.printT (xStr: "There are no available people")
                    }
                
            default:
                do{
                    assert (false)
                }
            }
            
            
           
            
            GameController.printT (xStr: "")
            return;
        }
        assert (itemsExist == true )
        
        GameController.printT (xStr: "---------")
        for c in W0300.Objects[W0100.L.ObjectIndex].ObjectConnections
        {
            if W0300.Objects[c.ConnectedObjectIndex].ObjectType == LookAtObjectType
            {
 
                GameController.printT (xStr: W0300.Objects[c.ConnectedObjectIndex].ObjectShortInfo)//567
            }
        }
        GameController.printT (xStr: "---------")
        GameController.printT (xStr: "")
    }
    
    func SendCommand(Cmd: String, testMode: Bool = false)
        //test mode means that the words are separated with comma,
        //and the app then checks if the words in the command string
        //are supported by the word components.
    {
 
        var SeparatedCmd = Cmd
        var Cmd = Cmd.replacingOccurrences(of: ";", with: " ")
        
        GameController.printT (xStr: "> " + Cmd)
        
            if Dep01.StringStartsWith(MyString: Cmd, Substring: "/replace")
            {
                replace(Cmd: Cmd)
                return;
            }
            
        
           if Dep01.StringStartsWith(MyString: Cmd, Substring: "/read")
                {
                    GameController.printT (xStr: W0400.ReadObjectIfPossible(Cmd: Cmd))
                    return;
                }
        
        
        
         
        
        switch Cmd
        {
         
        case "#01":
            do {
                CheatCode001()
            }
            
        case "/look for entries":
            do {
                
                LookAtRoom(LookAtObjectType: .Room)
                
            }
            
            
            case "/look for people":
                do {
                    LookAtRoomIndividualOrConversation()
                }
            
            
        case "/look for items":
            do {LookAtRoom(LookAtObjectType: .Collectable)}
            
        case "/add room":
            do{DisplayCode_For_CreateNewRoom()}
            
        case "/backpack":
                       do {
                      //  OutputTextView.text =  OutputTextView.text
                        GameController.printT (xStr: W0400.GetBackpackInventory())
                       }
        
            case "/list":
                           do {
                                GameController.printT (xStr: "Room ID:" + W0300.Objects[W0100.L.ObjectIndex].ID!)
                                GameController.printT (xStr: "")
                           }
            
            
        case "/location":
            do {
                GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectInfo)
                GameController.printT (xStr: "")
            }
          
        case "/words":
                do {
                    
                    print (W0300.Objects[W0100.L.ObjectIndex].WordCategories.count)
                    print (W0300.Objects[W0100.L.ObjectIndex].ID!)
                    GameController.printT  (xStr: W0300.Objects[W0100.L.ObjectIndex].GetWords())
                    GameController.printT (xStr: "")
                }
            
             
        default:
            do {
                
                
                if testMode
                 {
                     //here we check if all words exist in the word list for the current room
                     //in the string, the words are separated by comma
                     
                     var WordArray = SeparatedCmd.components(separatedBy: ";")
                     
                     var WordMissing = false
                     
                     for W in WordArray
                     {
                         var WordFound = false
                    
                         for C in W0400.Objects[W0100.L.ObjectIndex].WordCategories
                         {
                             
                             for W2 in C.Words
                             {
                                 if W == W2 {WordFound = true}
                                 
                             }
                             
                           
                              }//for C
                         if !WordFound {
                                                       WordMissing = true
                                                       print ("Object ID:" + W0400.Objects[W0100.L.ObjectIndex].ID!)
                                                       print ("Missing word:" + W)
                                                       assert (WordMissing == false)
                         }
                         }//for W2 in Objects[W0100.L.ObjectIndex].WordCategories
                         
                          assert (WordMissing == false)
                     }//if testmode
                
                
                
                
                
                W0100.L.TempObjectConnectionIndex = W0300.Objects[W0100.L.ObjectIndex].ObjectConnectionIndex(ID: Cmd)
                //GameController.printT (xStr: W0100.L.TempObjectConnectionIndex)
                //GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ID!)
                // GameController.printT (xStr:  W0100.L.ObjectIndex )
               // GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections [ W0100.L.TempObjectConnectionIndex].ConnectedObjectIndex)
                
                
           
                
                
                if W0100.L.TempObjectConnectionIndex == -1
                {
                    GameController.printT (xStr: "Wrong command")
                    GameController.printT (xStr: "")
                }//if W0100.L.TempObjectConnectionIndex == -1
                else
                {
                    
                    if W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].NoEntry
                               {
                                   GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                                GameController.printT (xStr: "")
                                   return;
                               }
                    
                    
                    
                    var DestinationObjectIndex = W0300.Objects[W0100.L.ObjectIndex].ObjectConnections [ W0100.L.TempObjectConnectionIndex].ConnectedObjectIndex
                    if DestinationObjectIndex == -2 {DestinationObjectIndex =  W0400.ObjectsIndex(ID: W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn)}
                    
                    if W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn == "" {W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn = W0300.Objects[DestinationObjectIndex].RootIDForReturn}
                    
                    if W0300.Objects[DestinationObjectIndex].RootIDForReturn == "" {W0300.Objects[DestinationObjectIndex].RootIDForReturn = W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn}
                   
                 //   GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ID)
                    //GameController.printT (xStr:  W0100.L.ObjectIndex )
                    
                    if W0300.Objects[DestinationObjectIndex].ObjectType == .Room
                    {
            
                        var BackpackValidationSuccessful = true
                        var FailureMessage: String = ""
                        
//                        GameController.printT (xStr: W0100.L.ObjectIndex)
//                        GameController.printT (xStr: W0100.L.TempObjectConnectionIndex)
                        
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
                            GameController.printT (xStr: FailureMessage)
     GameController.printT (xStr: "")
                            return;
                        }
                        
                        GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                        
                        W0100.L.ObjectIndex =  DestinationObjectIndex
                        GameController.printT (xStr: "")
                    }
                    
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .Collectable
                    {
                        W0200.BackPackContent.BackPackItems.append(W0001.BackPackItemStruct(ObjectIndex: DestinationObjectIndex))
                        W0300.Objects[DestinationObjectIndex].ObjectType = .Collected
                        GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                        GameController.printT (xStr: "")
                    }
                        
                        
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .Individual
                        {
                            
                            GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                            W0100.L.ObjectIndex =  DestinationObjectIndex
                            GameController.printT (xStr: "")
                        }
                    
                        
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .IndividualLocalConversation
                                         {
 
                                             GameController.printT (xStr: W0300.Objects[W0100.L.ObjectIndex].ObjectConnections[W0100.L.TempObjectConnectionIndex].ConnectingMessage)
                                             GameController.printT (xStr: "")
                                         }
                        
                    else if W0300.Objects[DestinationObjectIndex].ObjectType == .Collected
                                                                {
                        
                                                                    GameController.printT (xStr: "you have already taken this item")
                                                                    GameController.printT (xStr: "")
                                                                }
                        
                        
                    else
                    {
                        GameController.printT (xStr: "the action cannot be completed")
                        GameController.printT (xStr: "")
                          //assert (false)
                    }
                    
                }//else
                
                
                

                
                
                
            }//default
            
        }// switch Cmd
    }
    
 
    
    @IBOutlet weak var CommandTextField: UITextField!
    
    @IBAction func DisplayLocation(_ sender: UIButton) {
        CommandTextField.text = "/location"
        SendCommand(Cmd: CommandTextField.text!)
        CommandTextField.text = ""
    }
    
    @IBAction func LookForItems(_ sender: UIButton) {
        CommandTextField.text = "/look for items"
        SendCommand(Cmd: CommandTextField.text!)
        CommandTextField.text = ""
    }
    
    
    @IBAction func LookForEntries(_ sender: UIButton) {
        CommandTextField.text = "/look for entries"
        SendCommand(Cmd: CommandTextField.text!)
        CommandTextField.text = ""
    }
    
    @IBAction func LookForPeople(_ sender: UIButton) {
        CommandTextField.text = "/look for people"
              SendCommand(Cmd: CommandTextField.text!)
              CommandTextField.text = ""
    }
    
    
    @IBAction func Backpack(_ sender: UIButton) {
        CommandTextField.text = "/backpack"
               SendCommand(Cmd: CommandTextField.text!)
               CommandTextField.text = ""
    }
    
    
    @IBOutlet weak var MyTableView: UITableView!
    
    @IBAction func ConfirmCommand(_ sender: UIButton) {
        SendCommand(Cmd: CommandTextField.text!)
        CommandTextField.text = ""
        
        W0400.TableView_GenerateItemArray(ObjectIndex: W0400.L.ObjectIndex)
        MyTableView.reloadData()
    }
    
    func CheatCode001()
    {
                       var cmd: String = ""
                        cmd = "take;the;red key"
                        SendCommand (Cmd: cmd, testMode: true)
                        cmd = "enter;the;living room"
                        SendCommand (Cmd: cmd, testMode: true)
                        cmd = "enter;the;store room"
                        SendCommand (Cmd: cmd, testMode: true)
                         cmd = "take;the;blue key"
                           SendCommand (Cmd: cmd, testMode: true)
                        cmd = "exit;the;store room"
                        SendCommand (Cmd: cmd, testMode: true)
                        cmd = "exit;the;living room"
                          SendCommand (Cmd: cmd, testMode: true)
                        cmd = "enter;the;office"
                        SendCommand (Cmd: cmd, testMode: true)
        
                        cmd = "take;the;key card"
                        SendCommand (Cmd: cmd, testMode: true)
        
                        cmd = "exit;the;office"
                        SendCommand (Cmd: cmd, testMode: true)
        
                        cmd = "exit;the;apartment"
                        SendCommand (Cmd: cmd, testMode: true)
        
        cmd = "descend;the;staircase"
        SendCommand (Cmd: cmd, testMode: true)
        
    }

    
}

