 
 class W0001: W0000 {
 
    struct TableView_RowItemStruct //list of all items in the table view
    {
        var ObjectIndex: Int //This is the index of the main object, such as a room. An object contains a number of word categories, which in turn contain
                             //the words
        
        var WordCategoryIndex: Int //The index of the current word category. -1 means an empty row
        var IsCategoryHeading: Bool //States if the current item is a heading, such as "verb" or "noun". If not a heading, it is a words, such as "run" or "ball"
        
        var WordIndex: Int  //The index of a word within a word category¨. Applicable if IsCategoryHeading == false
        var Heading: String //The Heading as a string, either word or word category
        
        init (ObjectIndex: Int = -1, WordCategoryIndex: Int = -1, IsCategoryHeading: Bool = false, WordIndex: Int = -1, Heading: String = "")
        {
            self.ObjectIndex = ObjectIndex
            self.WordCategoryIndex = WordCategoryIndex
            self.IsCategoryHeading = IsCategoryHeading
            self.WordIndex = WordIndex
            self.Heading = Heading
            
        }
        
    }//struct RowItemForTableView
    
    
      enum ObjectTypeEnum: Int
       {
           case Room = 1
           case Collectable = 2
           case Collected = 3
           case Individual = 4
           case IndividualLocalConversation = 5
    
       }
    
    
    struct BackPackItemStruct
    {
          var ObjectIndex : Int = -1
     

    }//struct BackPackItemStruct
    
    
    struct LocationStruct
    {
       var ObjectIndex: Int = 0
       var TempObjectConnectionIndex: Int = 0
     
    }
    
    
    
    struct WordCategoryStruct
    {
        var ID : String?
        var Words: [String]  = [String]()
        var IsCollapsedInTable: Bool
        
        func WordIndex(Word : String) -> Int
        {
            for i in Words.indices
            {
                if Words[i] == Word {return i;}
            }
            //assert(false)
            return -1; //unreachable
        }
        
        init (ID : String? = nil, Words : [String] = [String](), IsCollapsedInTable: Bool = W0000.SectionCollapseEnabled)
        {
            self.ID = ID
            self.Words = Words
            self.IsCollapsedInTable = IsCollapsedInTable
        }
        
    }
    
    
    struct BackpackConditionStruct
    {
        var ObjectIndex: Int
        var FailureDescription: String
        
        init (ObjectIndex: Int = -1, FailureDescription: String = "")
        {
            self.ObjectIndex = ObjectIndex
            self.FailureDescription = FailureDescription
        }
        
    }
    

}
