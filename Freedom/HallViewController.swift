//
//  BalanceViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 19.03.2022.
//

import UIKit

class HallViewController: UIViewController {
    
    private var hallCollectionView = HallCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Freedom"
        view.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)
        
        view.addSubview(hallCollectionView)

        hallCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        hallCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        hallCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        hallCollectionView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        
        hallCollectionView.set(cells: FreedomModel.fetchHall())
    }
    

}
