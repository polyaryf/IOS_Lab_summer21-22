//
//  ContactTableViewCell.swift
//  HomeWork2
//
//  Created by Полина Рыфтина on 03.07.2022.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
