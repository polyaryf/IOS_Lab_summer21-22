//
//  ContactDetailsViewController.swift
//  HomeWork2
//
//  Created by Полина Рыфтина on 03.07.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    @IBOutlet weak var contactNicknameLabel: UILabel!
    @IBOutlet weak var contactUsernameLabel: UILabel!
    @IBOutlet weak var contactNumberLabel: UILabel!
    
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var settingsImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
