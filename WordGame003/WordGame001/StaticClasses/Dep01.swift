//
//  MyIndependentClass.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-19.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import Foundation

class Dep01: Ind
{
    
   
    static func StringStartsWith(MyString: String, Substring: String) -> Bool {
             
            return  (Ind.leftStr( Substring.count, MyString: MyString).lowercased() == Substring.lowercased())
            
        }
    
    
    
    
    
}
