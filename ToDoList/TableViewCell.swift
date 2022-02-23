//
//  TableViewCell.swift
//  ToDoList
//
//  Created by Coditas on 23/02/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var taskLbl: UILabel!
    @IBOutlet weak var statusButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
