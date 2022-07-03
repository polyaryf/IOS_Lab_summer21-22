//
//  ViewController.swift
//  HomeWork2
//
//  Created by Полина Рыфтина on 01.07.2022.
//

import UIKit

class AuthViewController: UIViewController {

    @IBOutlet weak var yourPhoneLabel: UILabel!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var infoText: UITextView!
    @IBOutlet var nextButton: UIView!
    @IBOutlet weak var infoButtonText: UITextView!
    @IBOutlet weak var phoneImage: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        phoneText.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yourPhoneLabel.textColor = UIColor(red: 0.69, green: 0.24, blue: 0.02, alpha: 1)
        nextButton.tintColor = UIColor(red: 0.69, green: 0.24, blue: 0.02, alpha: 1)
        phoneImage.tintColor = UIColor(red: 0.69, green: 0.24, blue: 0.02, alpha: 1)
        phoneText.placeholder = "Phone number"
    }
    
    @IBAction func nextButtonDidTab(_ sender: Any) {
        guard phoneText.text != nil else {return}
        
        if (phoneText.text?.isValidPhoneNumber()) != nil {
            guard let phoneTextStartCondition = phoneText.text?.starts(with: "89087") else {return}
            if phoneTextStartCondition {
                guard let contactListVC = storyboard?.instantiateViewController(withIdentifier: "ContactListTableViewController") else {return}
                navigationController?.pushViewController(contactListVC, animated: true)
            } else {
                guard let accessErrorVC = storyboard?.instantiateViewController(withIdentifier: "AccessErrorViewController") else {return}
                present(accessErrorVC, animated: true)
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

extension String {
    func isValidPhoneNumber() -> Bool {
        let regEx = #"^\(?\d{4}\)?[ -]?\d{3}[ -]?\d{4}$"#

        let phoneCheck = NSPredicate(format: "SELF MATCHES[c] %@", regEx)
        return phoneCheck.evaluate(with: self)
    }
}
