 
class G0000: W0400
{
   static func Set_988193_ID_Grand_Father()
            {
            var Index_Grand_Father = 0
            W0300.Objects.append(W0200.ObjectStruct(ID: "GrandFather"))
            Index_Grand_Father =  W0400.ObjectsIndex(ID: "GrandFather")
            W0100.L.ObjectIndex = W0400.ObjectsIndex(ID: "GrandFather")
                W0300.Objects[W0100.L.ObjectIndex].ObjectInfo = "You are in the living room, talking to the grandfather."
             W0300.Objects[W0100.L.ObjectIndex].ObjectShortInfo = "grandfather"
             W0300.Objects[W0100.L.ObjectIndex].ObjectType = .Individual
               Index_Grand_Father = W0100.L.ObjectIndex
                     W0300.Objects[Index_Grand_Father].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))
                     W0300.Objects[Index_Grand_Father].WordCategories.append( W0001.WordCategoryStruct(ID: "noun"))
                     W0300.Objects[Index_Grand_Father].WordCategories.append( W0001.WordCategoryStruct(ID: "article"))
             
                     var Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grand_Father].WordCategoryIndex(ID: "verb")
                     W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("stop")
                     W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("talking")
                 W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("are")
                     Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grand_Father].WordCategoryIndex(ID: "noun")
                     W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("grandfather")
             
             Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grand_Father].WordCategoryIndex(ID: "pronoun")
                               W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("who")
                                W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("you")
             
             Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grand_Father].WordCategoryIndex(ID: "preposition")
             W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("to")
             
                          Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grand_Father].WordCategoryIndex(ID: "article")
                      W0300.Objects[Index_Grand_Father].WordCategories [Index_Temp_WordCategoryIndex].Words.append("the")
               W0100.L.ObjectIndex = Index_Grand_Father
            
            }
     
     static func Connection_LivingRoom_Grand_Father5678()
            {
            let Index_LivingRoom =  W0400.ObjectsIndex(ID: "LivingRoom")
            let Index_Grand_Father = W0400.ObjectsIndex(ID: "GrandFather")
            W0300.Objects[Index_LivingRoom].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_Grand_Father,   ID: "start talking to the grandfather", ConnectingMessage: "you start talking to the grandfather"))
            
             //-2 means connection to the root object
            W0300.Objects[Index_Grand_Father].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: -2,   ID: "stop talking to the grandfather", ConnectingMessage: "you stop talking to the grandfather"))
            }
     
     //Set_988193_ID_Grand_Father()
     //Connection_LivingRoom_Grand_Father5678()

     
     
     static func Set_207138_ID_Grandfather_PleaseAdviceMe()
            {
            var Index_Grandfather_PleaseAdviceMe = 0
            W0300.Objects.append(W0200.ObjectStruct(ID: "GrandfatherPleaseAdvice"))
            Index_Grandfather_PleaseAdviceMe =  W0400.ObjectsIndex(ID: "GrandfatherPleaseAdvice")
            W0100.L.ObjectIndex = W0400.ObjectsIndex(ID: "GrandfatherPleaseAdvice")
                W0300.Objects[W0100.L.ObjectIndex].ObjectInfo = "You are in the GrandfatherPleaseAdvice."
             W0300.Objects[W0100.L.ObjectIndex].ObjectType = .IndividualLocalConversation
               Index_Grandfather_PleaseAdviceMe = W0100.L.ObjectIndex
 //                    W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))
 //                    W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories.append( W0001.WordCategoryStruct(ID: "pronoun"))
 //                    W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories.append( W0001.WordCategoryStruct(ID: "inf Marker"))
 //                    W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories.append( W0001.WordCategoryStruct(ID: "misc"))
 //                    var Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategoryIndex(ID: "verb")
 //                    W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories [Index_Temp_WordCategoryIndex].Words.append("advice")
 //                    W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories [Index_Temp_WordCategoryIndex].Words.append("do")
 //
 //
 //                     Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategoryIndex(ID: "pronoun")
 //                     W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories [Index_Temp_WordCategoryIndex].Words.append("me")
 //                 W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories [Index_Temp_WordCategoryIndex].Words.append("what")
 //
 //
 //            Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategoryIndex(ID: "inf Marker")
 //                   W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories [Index_Temp_WordCategoryIndex].Words.append("to")
 //
 //            Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategoryIndex(ID: "misc")
 //                           W0300.Objects[Index_Grandfather_PleaseAdviceMe].WordCategories [Index_Temp_WordCategoryIndex].Words.append("please")
             
             
               W0100.L.ObjectIndex = Index_Grandfather_PleaseAdviceMe
            
            }
     
     static func Connection_GrandfatherDiscussion_Grandfather_PleaseAdviceMe5678()
            {
            let Index_GrandfatherDiscussion =  W0400.ObjectsIndex(ID: "GrandfatherDiscussion")
            let Index_Grandfather_PleaseAdviceMe = W0400.ObjectsIndex(ID: "GrandfatherPleaseAdvice")
            W0300.Objects[Index_GrandfatherDiscussion].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_Grandfather_PleaseAdviceMe,   ID: "please advice me what to do", ConnectingMessage: "since you said please I will advice you. you should do what feels right for you."))
            
  
            }
     
     //Set_207138_ID_Grandfather_PleaseAdviceMe()
     //Connection_GrandfatherDiscussion_Grandfather_PleaseAdviceMe5678()
     
     

     
     
     //455768676579
     static func Set_723025_ID_Grandfather_Discussion()
            {
            var Index_Grandfather_Discussion = 0
            W0300.Objects.append(W0200.ObjectStruct(ID: "GrandfatherDiscussion"))
            Index_Grandfather_Discussion =  W0400.ObjectsIndex(ID: "GrandfatherDiscussion")
            W0100.L.ObjectIndex = W0400.ObjectsIndex(ID: "GrandfatherDiscussion")
                W0300.Objects[W0100.L.ObjectIndex].ObjectInfo = "You are discussing with the grandfather."
             W0300.Objects[W0100.L.ObjectIndex].ObjectType = .Individual
               Index_Grandfather_Discussion = W0100.L.ObjectIndex
                     W0300.Objects[Index_Grandfather_Discussion].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))
                     W0300.Objects[Index_Grandfather_Discussion].WordCategories.append( W0001.WordCategoryStruct(ID: "noun"))
                     W0300.Objects[Index_Grandfather_Discussion].WordCategories.append( W0001.WordCategoryStruct(ID: "article"))
                      W0300.Objects[Index_Grandfather_Discussion].WordCategories.append( W0001.WordCategoryStruct(ID: "misc"))
             W0300.Objects[Index_Grandfather_Discussion].WordCategories.append( W0001.WordCategoryStruct(ID: "infMarker"))
   W0300.Objects[Index_Grandfather_Discussion].WordCategories.append( W0001.WordCategoryStruct(ID: "pronoun"))
             
                     var Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_Discussion].WordCategoryIndex(ID: "verb")
                     W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("stop")
                     W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("discussing")
                        W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("do")
                     W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("advice")
             
             
             Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_Discussion].WordCategoryIndex(ID: "misc")
             
                                W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("please")
             
             
             
             
                     Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_Discussion].WordCategoryIndex(ID: "noun")
  
                     W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("subject")
             
                  
            
             Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_Discussion].WordCategoryIndex(ID: "pronoun")
                           W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("me")
               W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("this")
                    W0100.L.ObjectIndex = Index_Grandfather_Discussion
  
                                      W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("what")
                               W0100.L.ObjectIndex = Index_Grandfather_Discussion
             
             Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Grandfather_Discussion].WordCategoryIndex(ID: "infMarker")
                              W0300.Objects[Index_Grandfather_Discussion].WordCategories [Index_Temp_WordCategoryIndex].Words.append("to")
                       W0100.L.ObjectIndex = Index_Grandfather_Discussion
             
            }
     
     static func Connection_GrandFather_Grandfather_Discussion5678()
            {
            let Index_GrandFather =  W0400.ObjectsIndex(ID: "GrandFather")
            let Index_Grandfather_Discussion = W0400.ObjectsIndex(ID: "GrandfatherDiscussion")
            W0300.Objects[Index_GrandFather].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_Grandfather_Discussion,   ID: "who are you", ConnectingMessage: "i am the grandfather"))
            
            W0300.Objects[Index_Grandfather_Discussion].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: -2,   ID: "stop discussing this subject", ConnectingMessage: "you stop discussing this subject"))
            }
  
    
    static func Set_675467_ID_LivingRoom()
        {
            var Index_LivingRoom = 0
            W0300.Objects.append(W0200.ObjectStruct(ID: "LivingRoom"))
            Index_LivingRoom =  W0400.ObjectsIndex(ID: "LivingRoom")
            W0100.L.ObjectIndex = W0400.ObjectsIndex(ID: "LivingRoom")
                   W0300.Objects[W0100.L.ObjectIndex].ObjectInfo = "You are in the living room."
                   W0300.Objects[W0100.L.ObjectIndex].ObjectShortInfo = "living room"
                  W0300.Objects[W0100.L.ObjectIndex].ObjectType = .Room
                 W0300.Objects[W0100.L.ObjectIndex].RootIDForReturn = "LivingRoom"
                  Index_LivingRoom = W0100.L.ObjectIndex
                        W0300.Objects[Index_LivingRoom].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))
                        W0300.Objects[Index_LivingRoom].WordCategories.append( W0001.WordCategoryStruct(ID: "noun"))
                        W0300.Objects[Index_LivingRoom].WordCategories.append( W0001.WordCategoryStruct(ID: "article"))
                        var Index_Temp_WordCategoryIndex =  W0300.Objects[Index_LivingRoom].WordCategoryIndex(ID: "verb")
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("take")
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("exit")
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("enter")
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("start")
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("talking")
            
                        Index_Temp_WordCategoryIndex =  W0300.Objects[Index_LivingRoom].WordCategoryIndex(ID: "noun")
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("living room")
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("store room")
                        
                        W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("grandfather")
            
                         Index_Temp_WordCategoryIndex =  W0300.Objects[Index_LivingRoom].WordCategoryIndex(ID: "article")
                         W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("the")
            
                         Index_Temp_WordCategoryIndex =  W0300.Objects[Index_LivingRoom].WordCategoryIndex(ID: "preposition")
                         W0300.Objects[Index_LivingRoom].WordCategories [Index_Temp_WordCategoryIndex].Words.append("to")
                  W0100.L.ObjectIndex = Index_LivingRoom
            
        }
        
        static func Connection_Hallway_LivingRoom5678()
        {
            let Index_Hallway =  W0400.ObjectsIndex(ID: "Hallway")
            let Index_LivingRoom = W0400.ObjectsIndex(ID: "LivingRoom")
            W0300.Objects[Index_Hallway].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_LivingRoom,   ID: "enter the living room", ConnectingMessage: "you enter the living room"))
            
            W0300.Objects[Index_LivingRoom].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_Hallway,   ID: "exit the living room", ConnectingMessage: "you exit the living room"))
        }
        
        //Set_675467_ID_LivingRoom()
        //Connection_Hallway_LivingRoom5678()
        
        
        
        static func Set_54674_ID_Hallway()
        {
            W0300.Objects.append(W0200.ObjectStruct(ID: "Hallway"))
            var Index_Hallway = W0400.ObjectsIndex(ID: "Hallway")
            W0300.Objects[Index_Hallway].ObjectInfo = "You are in the hallway."
            W0300.Objects[Index_Hallway].ObjectShortInfo = "hallway"
                   //assert (W0300.Objects[0].ObjectInfo == "You are in the hallway.")
                   W0300.Objects[Index_Hallway].ObjectType = .Room
                   //assert (W0300.Objects[0].ObjectType == .Room)
                   
                    W0300.Objects[Index_Hallway].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))
                   //assert (W0300.Objects[0].WordCategories[0].ID == "verb")
                   
                    W0300.Objects[Index_Hallway].WordCategories.append( W0001.WordCategoryStruct(ID: "noun"))
                   //assert (W0300.Objects[0].WordCategories[1].ID == "noun")
                   
                   W0300.Objects[Index_Hallway].WordCategories.append( W0001.WordCategoryStruct(ID: "article"))
                   //assert (W0300.Objects[0].WordCategories[2].ID == "article")
                     
                   var Index_Temp_WordCategoryIndex = W0300.Objects[Index_Hallway].WordCategoryIndex(ID: "verb")
                   //assert (Index_Temp_WordCategoryIndex == 0)
                   W0300.Objects[Index_Hallway].WordCategories [Index_Temp_WordCategoryIndex].Words.append("take")
                   //assert (W0300.Objects[0].WordCategories[0].Words[0] == "take")
                   W0300.Objects[Index_Hallway].WordCategories [Index_Temp_WordCategoryIndex].Words.append("enter")
                   //assert (W0300.Objects[0].WordCategories[0].Words[1] == "enter")
                   Index_Temp_WordCategoryIndex = W0300.Objects[Index_Hallway].WordCategoryIndex(ID: "noun")
                   W0300.Objects[Index_Hallway].WordCategories [Index_Temp_WordCategoryIndex].Words.append("red key")
                   //assert (W0300.Objects[0].WordCategories[1].Words[0] == "red key")
                   W0300.Objects[Index_Hallway].WordCategories [Index_Temp_WordCategoryIndex].Words.append("living room")
                   //assert (W0300.Objects[0].WordCategories[1].Words[1] == "living room")
                   Index_Temp_WordCategoryIndex = W0300.Objects[Index_Hallway].WordCategoryIndex(ID: "article")
                   W0300.Objects[Index_Hallway].WordCategories [Index_Temp_WordCategoryIndex].Words.append("the")
                   //assert (W0300.Objects[0].WordCategories[2].Words[0] == "the")
        }
        
        
        static func Set_Object_In_Hallway_ID_RedKeyInHallway()
        {
            var Index_RedKeyInHallway = 0
            W0300.Objects.append(W0200.ObjectStruct(ID: "RedKeyInHallway"))
            let Index_Hallway = W0400.ObjectsIndex(ID: "Hallway")
            Index_RedKeyInHallway =  W0400.ObjectsIndex(ID: "RedKeyInHallway")
             W0300.Objects[Index_RedKeyInHallway].ObjectInfo = "red key"
             W0300.Objects[Index_RedKeyInHallway].ObjectShortInfo = "red key"
             //assert (W0300.Objects[2].ObjectInfo == "red key")
             W0300.Objects[Index_RedKeyInHallway].ObjectType = .Collectable
       
            
                  W0300.Objects[Index_Hallway].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_RedKeyInHallway,   ID: "take the red key", ConnectingMessage: "you take the red key"))
            
        }
        
        
        static func Set_ObjectIn_LivingRoom_537_ID_BlueKey()
        {
          
            W0300.Objects.append(W0200.ObjectStruct(ID: "BlueKeyInStoreRoom"))
     
            
        }
        
     
                 
           static func Set_695485_ID_Store_Room()
                    {
                    var Index_Store_Room = 0
                    W0300.Objects.append(W0200.ObjectStruct(ID: "store room"))
                    Index_Store_Room =  W0400.ObjectsIndex(ID: "store room")
                    W0100.L.ObjectIndex = W0400.ObjectsIndex(ID: "store room")
                        W0300.Objects[W0100.L.ObjectIndex].ObjectInfo = "You are in the store room."
                        W0300.Objects[W0100.L.ObjectIndex].ObjectShortInfo = "store room"
                       W0300.Objects[W0100.L.ObjectIndex].ObjectType = .Room
                       Index_Store_Room = W0100.L.ObjectIndex
                        
                         let Index_BlueKeyInStoreRoom =  W0400.ObjectsIndex(ID: "BlueKeyInStoreRoom")
                      
                        W0300.Objects[Index_BlueKeyInStoreRoom].ObjectInfo = "blue key"
                                 W0300.Objects[Index_BlueKeyInStoreRoom].ObjectShortInfo = "blue key"
                           W0300.Objects[Index_Store_Room].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_BlueKeyInStoreRoom,   ID: "take the blue key", ConnectingMessage: "you take the blue key"))

                       
                        
                        //assert (W0300.Objects[2].ObjectInfo == "red key")
                        W0300.Objects[Index_BlueKeyInStoreRoom].ObjectType = .Collectable
                        
                             W0300.Objects[Index_Store_Room].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))
                             W0300.Objects[Index_Store_Room].WordCategories.append( W0001.WordCategoryStruct(ID: "noun"))
                             W0300.Objects[Index_Store_Room].WordCategories.append( W0001.WordCategoryStruct(ID: "article"))
                        
                             //The verbs
                             var Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Store_Room].WordCategoryIndex(ID: "verb")
                             W0300.Objects[Index_Store_Room].WordCategories [Index_Temp_WordCategoryIndex].Words.append("exit")
                        
                             //the nouns
                             Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Store_Room].WordCategoryIndex(ID: "noun")
                             W0300.Objects[Index_Store_Room].WordCategories [Index_Temp_WordCategoryIndex].Words.append("store room")
                             W0300.Objects[Index_Store_Room].WordCategories [Index_Temp_WordCategoryIndex].Words.append("blue key")
                              //the article
                              Index_Temp_WordCategoryIndex =  W0300.Objects[Index_Store_Room].WordCategoryIndex(ID: "article")
                              W0300.Objects[Index_Store_Room].WordCategories [Index_Temp_WordCategoryIndex].Words.append("the")
                       W0100.L.ObjectIndex = Index_Store_Room
                    
                    }
         
             static func Connection_LivingRoom_Store_Room()
                    {
                    let Index_LivingRoom =  W0400.ObjectsIndex(ID: "LivingRoom")
                    let Index_Store_Room = W0400.ObjectsIndex(ID: "store room")
                    W0300.Objects[Index_LivingRoom].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_Store_Room,   ID: "enter the store room", ConnectingMessage: "you use the red key to enter the store room"))
                    
     
                        
                    //here we are going to add some backpack conditions, the red key must be used to enter the store room
                        let RedKeyInHallwayIndex = W0400.ObjectsIndex(ID: "RedKeyInHallway")
                        let ConnectionIndex = W0300.Objects[Index_LivingRoom].ObjectConnectionIndex(ID: "enter the store room")
                        W0300.Objects[Index_LivingRoom].ObjectConnections [ConnectionIndex].BackpackConditions.append(W0001.BackpackConditionStruct(ObjectIndex: RedKeyInHallwayIndex, FailureDescription: "The door to the store room is locked. You need a red key to open it."))
                        
    //                    ViewController.printT (xStr: Index_LivingRoom)
    //                    ViewController.printT (xStr: ConnectionIndex)
    //                    ViewController.printT (xStr:  W0300.Objects[Index_LivingRoom].ObjectConnections [ConnectionIndex].BackpackConditions.count)
                       
                        
                    W0300.Objects[Index_Store_Room].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Index_LivingRoom,   ID: "exit the store room", ConnectingMessage: "you exit the store room and lock the door behind you"))
                    }
    
     static func LastAddedInstructions()
       {
           var Temp0001ObjectIndex: Int = 0
           var Temp0001WordCategoryIndex: Int = 0
           var Temp0001NewObjectIndex: Int = 0
           
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "pronoun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("he");
           
           
           
       
    Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                 
         W0300.Objects.append (W0200.ObjectStruct(ID: "office_index"))
            
         Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "office_index")
            
         W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in the office"
         W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "office"
         W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Room
            
         W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "enter the office", ConnectingMessage: "you use the blue key to enter the office" ))
                   
    W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001ObjectIndex, ID: "exit the office", ConnectingMessage: "you exit the office and lock the door behind you, using the blue key" ))
           
           
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("office");
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "office_index");
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "office_index");
          W0300.Objects[Temp0001ObjectIndex].WordCategories.append( W0001.WordCategoryStruct(ID: "article"))
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append( W0001.WordCategoryStruct(ID: "noun"))
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append( W0001.WordCategoryStruct(ID: "verb"))//47567
           
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "article");
           
           print (W0300.Objects[Temp0001ObjectIndex].WordCategories.count)
           
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("the");
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "office_index");
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "office_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("office");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("key card");
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "office_index");
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "office_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("exit");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("take");
           
           
           
              
           var ObjectIndex000 = W0400.ObjectsIndex(ID: "Hallway")
                   
                var ConnectionIndex000 = W0300.Objects [ObjectIndex000].ObjectConnectionIndex(ID: "enter the office")
                   
                var BackPackItemIndex000: Int = W0400.ObjectsIndex(ID: "BlueKeyInStoreRoom")
                   
                W0300.Objects [ObjectIndex000].ObjectConnections[ConnectionIndex000].BackpackConditions.append(W0001.BackpackConditionStruct(ObjectIndex: BackPackItemIndex000, FailureDescription: "a blue key is required for opening the office"))
           
           
           
           
           
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                        
           if (W0300.Objects[Temp0001ObjectIndex].ObjectType == .Room)
                  {
                      W0300.Objects[Temp0001ObjectIndex].RootIDForReturn = W0300.Objects[Temp0001ObjectIndex].ID!
                  }
              
                W0300.Objects.append (W0200.ObjectStruct(ID: "Peter_index"))
                   
                Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "Peter_index")
                   
                W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in the hallway, talking to Peter"
                W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "Peter"
                W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Individual
                   
                W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "start talking to Peter", ConnectingMessage: "you start talking to Peter" ))
                          
           W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: -2, ID: "stop talking to Peter", ConnectingMessage: "you stop talking to Peter" ))
                       
           
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                        
           if (W0300.Objects[Temp0001ObjectIndex].ObjectType == .Room)
                  {
                      W0300.Objects[Temp0001ObjectIndex].RootIDForReturn = W0300.Objects[Temp0001ObjectIndex].ID!
                  }
              
                W0300.Objects.append (W0200.ObjectStruct(ID: "Peter_index2"))
                   
                Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2")
                   
                W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in the hallway, discussing with Peter"
                W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "Peter"
                W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Individual
                   
                W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "who are you", ConnectingMessage: "I am Peter. I live in this apartment. Who are you?" ))
                          
           W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: -2, ID: "stop talking to Peter", ConnectingMessage: "you stop talking to Peter" ))
           
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("start");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("talking");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "preposition"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "preposition");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("to");

              
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "proper noun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "proper noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("Peter");

           
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "pronoun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("who");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("you");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "verb"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("are");
           
           
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "verb"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("stop");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("talking");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "preposition"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "preposition");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("to");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "proper noun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "proper noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("Peter");
           
           
           
           
           
           
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "pronoun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("I");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("am");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "proper noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("Ben");

              
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index2");
                        
           if (W0300.Objects[Temp0001ObjectIndex].ObjectType == .Room)
                  {
                      W0300.Objects[Temp0001ObjectIndex].RootIDForReturn = W0300.Objects[Temp0001ObjectIndex].ID!
                  }
              
                W0300.Objects.append (W0200.ObjectStruct(ID: "Peter_index7"))
                   
                Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7")
                   
                W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in the hallway, talking to Peter"
                W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "Peter"
                W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Individual
                   
                W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "I am Ben", ConnectingMessage: "nice meeting you" ))
                          
           W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: -2, ID: "stop talking to Peter", ConnectingMessage: "you stop talking to Peter" ))
           
           
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "verb"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("stop");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("talking");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "preposition"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "preposition");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("to");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "proper noun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "proper noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("Peter");


            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("stop");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("talking");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "preposition"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "preposition");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("to");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "proper noun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "proper noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("Peter");


           
           
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   
           W0300.Objects.append (W0200.ObjectStruct(ID: "pleaseAdvice_index"))
              
           Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "pleaseAdvice_index")
              
           W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in the pleaseAdvice"
           W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "pleaseAdvice"
           W0300.Objects[Temp0001NewObjectIndex].ObjectType = .IndividualLocalConversation
              
           W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "could you please advice me what to do", ConnectingMessage: "The apartment door is locked. There is a key card in the office, which you need to open it."))
           
           
           
           
           
           
           
           
           
           
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "misc"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "misc");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("please");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("advice");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "pronoun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("me");

    
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("what");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "infMarker"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "infMarker");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("to");

           
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("do");
           
           
           
           
              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "modal"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "modal");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("could");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "misc"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "misc");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("please");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("tell");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("me");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "article"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "article");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("the");

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "noun"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("time");

              
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index");
                        
                W0300.Objects.append (W0200.ObjectStruct(ID: "timePlease_index"))
                   
                Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "timePlease_index")
                   
                W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in the timePlease"
                W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "timePlease"
                W0300.Objects[Temp0001NewObjectIndex].ObjectType = .IndividualLocalConversation
                   
                W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "could you please tell me the time", ConnectingMessage: "Sure no problem, wait a sec... it is 3 40 pm" ))

              Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
           W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "modal"));
                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "modal");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("could");

                 
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Peter_index7");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "pronoun");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("you");
           
           
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "office_index");
                   
           W0300.Objects.append (W0200.ObjectStruct(ID: "key card_index"))
              
           Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "key card_index")
              
           W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "key card"
           W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "key card"
           W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Collectable
           W0300.Objects[Temp0001NewObjectIndex].ReadableInformation = "This key card is only valid within the domains of the city of Lund. It expires on Jan 5, 2052"
              
           W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "take the key card", ConnectingMessage: "You take the key card." ))
            Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "store room");
                   Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
           W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("take");
        
        
        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                
        W0300.Objects.append (W0200.ObjectStruct(ID: "exit door_index"))
           
        Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "exit door_index")
           
        W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are outside the apartment, at the top of a staircase"
        W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "top of staircase"
        W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Room
         
        
        var Temp0001ObjectIndex2 = W0400.ObjectsIndex(ID: "Hallway");
        
        W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append( ObjectConnectionStruct(ConnectedObjectIndex: Temp0001ObjectIndex2, ID: "enter the apartment", ConnectingMessage: "The door to the apartment is locked and you don't have the right key.", NoEntry: true))
        W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "exit the apartment", ConnectingMessage: "you use the key card to exit the apartment" ))
        
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("exit");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "Hallway");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("apartment");
        
        
           
          ObjectIndex000 = W0400.ObjectsIndex(ID: "Hallway")
                
               ConnectionIndex000 = W0300.Objects [ObjectIndex000].ObjectConnectionIndex(ID: "exit the apartment")
                
               BackPackItemIndex000  = W0400.ObjectsIndex(ID: "key card_index")
                
             W0300.Objects [ObjectIndex000].ObjectConnections[ConnectionIndex000].BackpackConditions.append(W0400.BackpackConditionStruct(ObjectIndex: BackPackItemIndex000, FailureDescription: "You need the key card to exit the apartment."))

        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
        
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0400.WordCategoryStruct(ID: "verb"))
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0400.WordCategoryStruct(ID: "article"))
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0400.WordCategoryStruct(ID: "noun"))
        
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("enter");
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "article");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("the");
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("apartment");

         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("ring");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("door bell");
        
        
        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                
        W0300.Objects.append (W0200.ObjectStruct(ID: "Doorbell_index"))
           
        Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "Doorbell_index")
           
        W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "Doorbell_Info"
        W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "Doorbell"
        W0300.Objects[Temp0001NewObjectIndex].ObjectType = .IndividualLocalConversation
           
        W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "ring the door bell", ConnectingMessage: "Peter opens the door, but when he sees it is you he says you cannot come back and slams the door shut." ))
        
        
        
        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                     
             W0300.Objects.append (W0200.ObjectStruct(ID: "PetersHouseVestibule_index"))
                
             Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index")
                
             W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in the vestibule of Peter´s apartment house"
             W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "vestibule"
             W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Room
                
             W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "descend the staircase", ConnectingMessage: "you descend the staircase" ))
                       
        W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001ObjectIndex, ID: "ascend the staircase", ConnectingMessage: "you ascend the staircase" ))
        
        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("descend");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "exit door_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("staircase");
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
        
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0400.WordCategoryStruct(ID: "verb"))
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0400.WordCategoryStruct(ID: "noun"))
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0400.WordCategoryStruct(ID: "article"))
        
        
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("ascend");
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "article");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("the");
           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
              
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("staircase");

        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
                       
             W0300.Objects.append (W0200.ObjectStruct(ID: "outside Peters house_index"))
                  
             Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index")
                  
             W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are outside Peters house"
             W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "outside Peters house"
             W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Room
                  
             W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "exit the house", ConnectingMessage: "you exit the house" ))
                         
        W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001ObjectIndex, ID: "enter the house", ConnectingMessage: "you enter the house" ))
        
        
                
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("exit");

                
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "PetersHouseVestibule_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("house");

           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index");
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "verb"));
                
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "verb");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("enter");

           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index");
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "article"));
                
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "article");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("the");

           Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index");
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: "noun"));
                
         Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index");
                Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: "noun");
        W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append("house");

        
          
     Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "outside Peters house_index");
                    
     if (W0300.Objects[Temp0001ObjectIndex].ObjectType == .Room)
            {
                W0300.Objects[Temp0001ObjectIndex].RootIDForReturn = W0300.Objects[Temp0001ObjectIndex].ID!
            }
          
          W0300.Objects.append (W0200.ObjectStruct(ID: "old lady_index"))
               
          Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "old lady_index")
               
          W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in outside Peters house, talking to an old lady"
          W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "old lady"
          W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Individual
               
          W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "start talking to the old lady", ConnectingMessage: "you start talking to the old lady" ))
                      
     W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: -2, ID: "stop talking to the old lady", ConnectingMessage: "you stop talking to the old lady" ))
                      
     Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "old lady_index");
                    
     if (W0300.Objects[Temp0001ObjectIndex].ObjectType == .Room)
            {
                W0300.Objects[Temp0001ObjectIndex].RootIDForReturn = W0300.Objects[Temp0001ObjectIndex].ID!
            }
          
          W0300.Objects.append (W0200.ObjectStruct(ID: "old lady_index2"))
               
          Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "old lady_index2")
               
          W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are in outside Peters house, talking to the old lady"
          W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "old lady"
          W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Individual
               
          W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "could you please tell me where the bus stop is", ConnectingMessage: "it is right ahead and then left" ))
                      
     W0300.Objects[Temp0001NewObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: -2, ID: "stop talking to the old lady", ConnectingMessage: "you stop talking to the old lady" ))
                      
     Temp0001ObjectIndex = W0400.ObjectsIndex(ID: "old lady_index2");
                    
          W0300.Objects.append (W0200.ObjectStruct(ID: "bus stop_index"))
               
          Temp0001NewObjectIndex = W0400.ObjectsIndex(ID: "bus stop_index")
               
          W0300.Objects[Temp0001NewObjectIndex].ObjectInfo = "you are at the bus stop"
          W0300.Objects[Temp0001NewObjectIndex].ObjectShortInfo = "bus stop"
          W0300.Objects[Temp0001NewObjectIndex].ObjectType = .Room
               
          W0300.Objects[Temp0001ObjectIndex].ObjectConnections.append(W0100.ObjectConnectionStruct(ConnectedObjectIndex: Temp0001NewObjectIndex, ID: "walk to the bus stop", ConnectingMessage: "you walk to the bus stop" ))


        
       }
    
 }
