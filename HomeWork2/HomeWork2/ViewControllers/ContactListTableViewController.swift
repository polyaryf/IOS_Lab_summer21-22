//
//  ContactListTableViewController.swift
//  HomeWork2
//
//  Created by Полина Рыфтина on 03.07.2022.
//

import UIKit

struct Contact{
    let nickname: String
    let userName: String
    let number: Int
    let imageName: String
}

class ContactListTableViewController: UITableViewController {
    
    let contacts : [Contact] = [
        Contact(nickname: "Polinom", userName: "Polina", number: 89127435294,
                imageName:  "polinomImage"),
        Contact(nickname: "notsoundbanana", userName: " Daniil", number: 89037536241,
                imageName:  "daniilImage"),
        Contact(nickname: "kir0sa", userName: "Lesha", number: 89125729889,
                imageName: "leshaImage")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath)
                as? ContactTableViewCell else { return UITableViewCell() } 
        
        cell.numberLabel.text = String(contacts[indexPath.row].number)
        cell.nicknameLabel.text = contacts[indexPath.row].nickname

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let contactDetailsVC = storyboard?.instantiateViewController(withIdentifier: "ContactDetailsViewController") as? ContactDetailsViewController else {return}
        present(contactDetailsVC, animated: true)
        
        contactDetailsVC.contactNicknameLabel.text = contacts[indexPath.row].nickname
        contactDetailsVC.contactUsernameLabel.text = contacts[indexPath.row].userName
        contactDetailsVC.contactNumberLabel.text = String( contacts[indexPath.row].number )
        contactDetailsVC.userPhoto.image = UIImage(named: contacts[indexPath.row].imageName)
    }
}
