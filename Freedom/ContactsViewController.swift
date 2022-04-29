//
//  ContactsViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 31.03.2022.
//

import UIKit

class ContactsViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var whatsAppButton: UIButton!
    @IBOutlet weak var telegramButton: UIButton!
    @IBOutlet weak var vkButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contentView.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)
    }

    
    @IBAction func whatsAppAction(_ sender: UIButton) {
        
        guard let url = URL(string: "https://wa.me/+79831231443") else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    @IBAction func telegramAction(_ sender: UIButton) {
        guard let url = URL(string: "https://t.me/freedom_photostudio_nsk") else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    @IBAction func vkAction(_ sender: UIButton) {
        guard let url = URL(string: "https://vk.com/freedom_photostudio") else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
}
