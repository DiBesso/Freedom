//
//  BalanceViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 19.03.2022.
//

import UIKit

class HallViewController: UIViewController {
    
    var hallCollectionView = HallCollectionView()
    var cells = [FreedomModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hallCollectionView.hallDelegate = self
        
        view.addSubview(hallCollectionView)
        view.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)
        
        
        hallCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        hallCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        hallCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        hallCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        hallCollectionView.set(cells: FreedomModel.fetchHall())
    }
    
}

extension HallViewController: HallCollectionProtocol {
    func didSelect(_ item: Int) {
        if item == 0 {
            performSegue(withIdentifier: "balanceSegue", sender: self)
        }
        if item == 1 {
            performSegue(withIdentifier: "gatsbySegue", sender: self)
        }
        if item == 2 {
            performSegue(withIdentifier: "simpleSegue", sender: self)
        }
        if item == 3 {
            performSegue(withIdentifier: "fantasySegue", sender: self)
        }
    }
    
}
