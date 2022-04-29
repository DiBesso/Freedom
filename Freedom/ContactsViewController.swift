//
//  ContactsViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 31.03.2022.
//

import UIKit

class ContactsViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var waButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)

    }
    
    @IBAction func waAction(_ sender: UIButton) {
        
        guard let url = URL(string: "https://wa.me/+79833042806") else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    func hyperLink(originalText: String, hyperLink: String, url: String) {

    }
    
}
