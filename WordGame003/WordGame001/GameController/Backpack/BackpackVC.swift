//
//  BackpackVC.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-23.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class BackpackVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var SelectedBackPackItemIndex: Int = -1
    
    @IBAction func ReviewBackpackItem(_ sender: UIButton) {
        
        BackPackDialogTextView.text = BackPackDialogTextView.text + "\n"
        
         BackPackDialogTextView.text = BackPackDialogTextView.text + ">view item"
        BackPackDialogTextView.text = BackPackDialogTextView.text + "\n"
        
        
        if SelectedBackPackItemIndex == -1 {
           
           BackPackDialogTextView.text = BackPackDialogTextView.text + "no item selected"
            
            
            BackPackDialogTextView.text = BackPackDialogTextView.text + "\n"
            
            let stringLength:Int = BackPackDialogTextView.text.count
            BackPackDialogTextView.scrollRangeToVisible(NSMakeRange(stringLength-1, 0))
            
            return;
        }//if
        
        
       var ObjectIndex = W0400.BackPackContent.BackPackItems [SelectedBackPackItemIndex].ObjectIndex
        
         if W0400.Objects [ObjectIndex].ReadableInformation != nil
         {
               BackPackDialogTextView.text = BackPackDialogTextView.text +  W0400.Objects [ObjectIndex].ReadableInformation! + "\n"
        }
        else
         {
            BackPackDialogTextView.text = BackPackDialogTextView.text +  "there is no information available about the selected item" + "\n"
        }
        
        let stringLength:Int = BackPackDialogTextView.text.count
        BackPackDialogTextView.scrollRangeToVisible(NSMakeRange(stringLength-1, 0))
        
        
    }//func
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        SelectedBackPackItemIndex = indexPath.row
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        W0400.BackPackContent.BackPackItems.count
    }
    @IBAction func DismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var BackPackDialogTextView: UITextView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        
           let cell = tableView.dequeueReusableCell(withIdentifier: "BackPackListCell", for: indexPath) as! BackPackListCell
        var BackPackItemObjectIndex = W0200.BackPackContent.BackPackItems[indexPath.row].ObjectIndex
        cell.BackPackLabel.text = W0400.Objects[BackPackItemObjectIndex].ObjectShortInfo
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        BackPackDialogTextView.text = ""
        // Do any additional setup after loading the view.
        
        SelectedBackPackItemIndex  = -1
        
        self.BackPackDialogTextView.layoutManager.allowsNonContiguousLayout = false
        
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
