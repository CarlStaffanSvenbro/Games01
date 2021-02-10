 
 class W0200: W0100
 {
    
    
    static var BackPackContent = W0100.BackPackContentsStruct()
    
    static func StaticReset0200()
    {
        StaticReset0100()
        BackPackContent = W0100.BackPackContentsStruct()
    }
    
    
    struct ObjectStruct
    {

        var ID: String?
        var WordCategories: [W0001.WordCategoryStruct]
        var ObjectConnections: [W0100.ObjectConnectionStruct]
        var ObjectInfo: String
        var ObjectShortInfo: String
        var ObjectType: W0001.ObjectTypeEnum = .Room
        var RootIDForReturn: String
        var ReadableInformation: String?
        
        func ListWordsToString() -> String
        {
            var WordString : String = ""
            
            WordString = WordString + "----------------------"
            for C in WordCategories
            {
                for W in C.Words
                {
                    WordString = WordString +  C.ID! + " : " + W
                }
                
            }
            
            WordString = WordString + "----------------------"
            return WordString
        }
        
        
        func GetWords() -> String
        {
            var output : String = ""
            for C in WordCategories
            {
                output = output + "\n" + C.ID!
                for W in C.Words
                {
                    output = output +  "\n" + "   " + W
                }
                
            }
            
            return output
        }
        
        
        func WordCategoryIndex(ID: String) -> Int
        {
            for i:Int in WordCategories.indices
            {
                if WordCategories[i].ID == ID {return i;}
            }
            return 0
        }
        
        
        func ObjectConnectionIndex(ID: String) -> Int
        {
            for i:Int in ObjectConnections.indices
            {
                if ObjectConnections[i].ID == ID {return i;}
            }
            return -1
        }
        
        
        init (ID: String? = nil, WordCategories: [W0001.WordCategoryStruct] = [W0001.WordCategoryStruct](), ObjectConnections : [W0100.ObjectConnectionStruct] = [W0100.ObjectConnectionStruct](), ObjectInfo: String = "",  ObjectShortInfo: String = "", ObjectType: W0001.ObjectTypeEnum = .Room, RootIDForReturn: String = "", ReadableInformation: String? = nil)
        {
            self.ID = ID
            self.WordCategories = WordCategories
            self.ObjectConnections = ObjectConnections
            self.ObjectInfo = ObjectInfo
            self.ObjectShortInfo = ObjectShortInfo
            self.ObjectType = ObjectType
            self.RootIDForReturn = RootIDForReturn
            self.ReadableInformation = ReadableInformation
        }
        

        
        
    }
    
}
