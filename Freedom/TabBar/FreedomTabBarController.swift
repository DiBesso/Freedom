//
//  FreedomTabBarController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 31.03.2022.
//

import UIKit

class FreedomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)
        tabBar.tintColor = .white
    }
    
}
