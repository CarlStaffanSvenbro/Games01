//
//  WordCategoryCell.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-23.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import UIKit

class WordCategoryCell: UITableViewCell {

    @IBOutlet weak var ExpandCollapseButton: UIButton!
    @IBOutlet weak var Heading: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
