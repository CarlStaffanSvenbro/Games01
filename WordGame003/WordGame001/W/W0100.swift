 
 class W0100: W0001
 {
    
   static var TableView_RowItemArray = [TableView_RowItemStruct]()
    
   static var L = W0001.LocationStruct()
    
    
    static func StaticReset0100()
   {
       W0000.StaticReset0000()
       L = W0001.LocationStruct()
    TableView_RowItemArray.removeAll()
    }
    
    
   struct BackPackContentsStruct {
       var BackPackItems: [W0001.BackPackItemStruct]

       init ()
       {
           self.BackPackItems = [W0001.BackPackItemStruct]()
       }
   }
    

    
    
    struct ObjectConnectionStruct
       {
           var ConnectedObjectIndex: Int
           var ID: String?
           var ConnectingMessage: String
           var BackpackConditions: [W0001.BackpackConditionStruct]
           var NoEntry: Bool
           
           init (ConnectedObjectIndex: Int, ID: String? = nil, ConnectingMessage: String = "", BackpackConditions: [W0001.BackpackConditionStruct] = [W0001.BackpackConditionStruct](), NoEntry: Bool = false )
           {
               self.ConnectedObjectIndex = ConnectedObjectIndex
               self.ID = ID
               self.ConnectingMessage = ConnectingMessage
               self.BackpackConditions = BackpackConditions
               self.NoEntry = NoEntry
           }
           
           
           
       }
    
    
    
}
