//
//  RulesViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 31.03.2022.
//

import UIKit

class RulesViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var rulesTittle: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)
        textView.delegate = self
        
        setupTextView()
        setupLabel()
        
    }


    
    func setupLabel() {
        rulesTittle.textAlignment = .center
        rulesTittle.text = "Правила фотостудии"
        rulesTittle.font = UIFont(name: "Copperplate-Bold", size: 28)
        rulesTittle.textColor = .white
    }
    
    func setupTextView () {
        textView.backgroundColor = self.view.backgroundColor
        textView.font = UIFont(name: "Copperplate", size: 20)
        textView.isEditable = false
        textView.textColor = .white
    }
   
}
