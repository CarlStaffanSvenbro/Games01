//
//  AddBasicMenu.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-21.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class AddBasicMenu: UIViewController {

    @IBOutlet weak var WordCategoriesField: UITextView!
    
    @IBOutlet weak var WordCategoryName: UITextField!
    
    @IBAction func AddWordCategory(_ sender: UIButton) {
       
        
        var ObjectID = W0300.Objects[W0100.L.ObjectIndex].ID
        var Temp0001ObjectIndex: Int = 0
        
        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: ObjectID!);
        W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: WordCategoryName.text));
        WordCategoriesField.text = W0300.Objects[W0100.L.ObjectIndex].GetWords()
        
        var CodeOutput =
"""
Temp0001ObjectIndex = W0400.ObjectsIndex(ID: ObjectID!);
W0300.Objects[Temp0001ObjectIndex].WordCategories.append(W0001.WordCategoryStruct(ID: WordCategoryName.text));
"""
        
        CodeOutput = CodeOutput.replacingOccurrences(of: "ObjectID!", with: "\"" + ObjectID! +  "\"")
        
        CodeOutput = CodeOutput.replacingOccurrences(of: "WordCategoryName.text", with: "\"" + WordCategoryName.text! +  "\"")
        
        CodeOutput = CodeOutput.replacingOccurrences(of: "\n", with: "     \n")
        print ("   " + CodeOutput)
        W0000.GeneratedCode = W0000.GeneratedCode + CodeOutput
        
    }
    
    @IBAction func AddNewWord(_ sender: UIButton) {
        
         var Temp0001ObjectIndex: Int = 0
        var Temp0001WordCategoryIndex : Int = 0
         var Temp0001Index: Int = 0
        var ObjectID: String = ""
        
        
        ObjectID = W0300.Objects[W0100.L.ObjectIndex].ID!
        
        Temp0001ObjectIndex = W0400.ObjectsIndex(ID: ObjectID);
        Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: WordCategoryName.text!)
W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append(NewWord.text!)

        //start and end with new line
        var CodeOutput: String =
"""

 Temp0001ObjectIndex = W0400.ObjectsIndex(ID: ObjectID);
        Temp0001WordCategoryIndex = W0300.Objects[Temp0001ObjectIndex].WordCategoryIndex(ID: WordCategoryName.text!);
W0300.Objects[Temp0001ObjectIndex].WordCategories[Temp0001WordCategoryIndex].Words.append(NewWord.text!);

"""
        
        CodeOutput = CodeOutput.replacingOccurrences(of: "ObjectID", with: "\"" + ObjectID +  "\"")
        
        CodeOutput = CodeOutput.replacingOccurrences(of: "WordCategoryName.text!", with: "\"" + WordCategoryName.text! +  "\"")
        
         CodeOutput = CodeOutput.replacingOccurrences(of: "NewWord.text!", with: "\"" + NewWord.text! +  "\"")
     CodeOutput = CodeOutput.replacingOccurrences(of: "\n", with: "     \n")
        
         print ("   " + CodeOutput)
        
        W0000.GeneratedCode = W0000.GeneratedCode + CodeOutput
        
        WordCategoriesField.text = W0300.Objects[W0100.L.ObjectIndex].GetWords()
        
    }
    
    
    
    @IBOutlet weak var NewWord: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WordCategoriesField.text = W0300.Objects[W0100.L.ObjectIndex].GetWords()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
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
