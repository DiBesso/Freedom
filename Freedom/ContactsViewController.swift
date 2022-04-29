//
//  ContactsViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 31.03.2022.
//

import UIKit

class ContactsViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var whatsAppButton: UIButton!
    @IBOutlet weak var telegramButton: UIButton!
    @IBOutlet weak var vkButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)
        setButtons()
    }

    
    @IBAction func whatsAppAction(_ sender: UIButton) {
        
        guard let url = URL(string: "https://wa.me/+79833042806") else { return }
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
    
    func setButtons() {
        whatsAppButton.titleLabel?.font = UIFont(name: "Copperplate Bold", size: 28)
        telegramButton.titleLabel?.text = "Telegram"
        telegramButton.titleLabel?.font = UIFont(name: "Copperplate Bold", size: 28)
        telegramButton.titleLabel?.textColor = .white
        vkButton.titleLabel?.text = "VK"
        vkButton.titleLabel?.font = UIFont(name: "Copperplate Bold", size: 28)
        vkButton.titleLabel?.textColor = .white
        
    }
}
