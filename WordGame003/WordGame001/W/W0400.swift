 
class W0400: W0300
{
 
    static func StaticReset0400()
    {
        StaticReset0300()
    }
    
    static func TableView_GenerateItemArray(ObjectIndex: Int)
{
    var RowItemArrayIndex: Int = 0
    TableView_RowItemArray.removeAll()
    for WC in W0300.Objects[ObjectIndex].WordCategories.indices
    {
        var RowItem = TableView_RowItemStruct(ObjectIndex: ObjectIndex, WordCategoryIndex: WC, IsCategoryHeading: true, WordIndex: -1, Heading: W0300.Objects[ObjectIndex].WordCategories[WC].ID!)
        TableView_RowItemArray.append(RowItem)
        
        if (W0300.Objects[ObjectIndex].WordCategories[WC].IsCollapsedInTable == false) || (W0000.SectionCollapseEnabled == false)
        {
        for W in W0300.Objects[ObjectIndex].WordCategories[WC].Words.indices
        {
            RowItemArrayIndex = RowItemArrayIndex + 1
            var RowItem = TableView_RowItemStruct(ObjectIndex: ObjectIndex, WordCategoryIndex: WC, IsCategoryHeading: false, WordIndex: W, Heading: W0300.Objects[ObjectIndex].WordCategories[WC].Words[W])
            TableView_RowItemArray.append(RowItem)
          
        }
        }//if W0300.Objects[ObjectIndex].WordCategories[WC].IsCollapsedInTable == false
        
        
        RowItemArrayIndex = RowItemArrayIndex + 1
        
    }//for
    
    //generation of empty rows
    for i in 1...10
    {
        TableView_RowItemArray.append(TableView_RowItemStruct())
        RowItemArrayIndex = RowItemArrayIndex + 1
    }
    
    
    
    
}//static func TableView_GenerateItemArray()
    
    
 static func ObjectsIndex(ID: String) -> Int
 {
    for i in W0300.Objects.indices
     {
        if W0300.Objects[i].ID == ID {return i;}
     }
     return -1;
 }

 
    
    static func GetBackpackInventory() -> String
           {
            var ReturnString: String = ""
                    ReturnString = ReturnString + "----------------------" + "\n"
            for C in W0200.BackPackContent.BackPackItems
                   {
                    
                   ReturnString = ReturnString + W0300.Objects[C.ObjectIndex].ObjectInfo + "\n"
                
                       
                   }
                   
                  ReturnString = ReturnString + "----------------------" + "\n"
                   ReturnString = ReturnString + ""
              
            return ReturnString
           }
    
    
    
    
    static func ReadObjectIfPossible(Cmd: String) -> String
                 {
                    var OutputString: String = ""
                   var Cmd = Cmd.replacingOccurrences(of: "/read ", with: "/read;")
                   
                   var StrArray = Cmd.components(separatedBy: ";")
                   var ObjectID = StrArray [1]
    
                   var ContentWasRead: Bool = false
                    
                   for C in W0200.BackPackContent.BackPackItems
                         {
                          
                           print (W0300.Objects[C.ObjectIndex].ID!)
                           if W0300.Objects[C.ObjectIndex].ObjectInfo == ObjectID
                           {
                               if W0300.Objects[C.ObjectIndex].ReadableInformation != nil
                               {
                                OutputString = OutputString + W0300.Objects[C.ObjectIndex].ReadableInformation! + "\n\n"
                    
                                   ContentWasRead = true
                               }
                               
                               
                           }
    
                         }
           
                     if !ContentWasRead
                     {
                         OutputString = OutputString + "The operation could not be completed" + "\n\n"
 
                   }
                    
                    return OutputString
                    
                 }
    
    
    
    
    
 
 }
