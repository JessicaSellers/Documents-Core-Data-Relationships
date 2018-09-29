//
//  DocumentsTableViewCell.swift
//  Documents
//
//  Created by Jessica Elizabeth Sellers on 9/21/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class DocumentsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var modifiedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
