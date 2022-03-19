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

        view.addSubview(hallCollectionView)
        
        hallCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        hallCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        hallCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        hallCollectionView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        
        hallCollectionView.set(cells: FreedomModel.fetchHall())
    }
    

}
