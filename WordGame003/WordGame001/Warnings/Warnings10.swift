//
//  Warnings01.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-24.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class Warnings10: Warnings01 {
  
        
      static func GetTotalWarningMessage() -> String
      {
           var totalMessage: String = ""
        if Warnings01.Warning_AllowKeypadInputCommandBox {totalMessage = totalMessage + "Warning: Warning_AllowKeypadInputCommandBox\n"}
           
          return totalMessage
      }
   

}
