//
//  BalanceViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 19.03.2022.
//

import UIKit

class HallViewController: UIViewController {
    
    var hallCollectionView = HallCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(hallCollectionView)
        view.backgroundColor = .init(red: 0.5176, green: 0.5176, blue: 0.5098, alpha: 1)
        

        hallCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        hallCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        hallCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        hallCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        hallCollectionView.set(cells: FreedomModel.fetchHall())
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = hallCollectionView.indexPathsForSelectedItems {
            guard let balanceGalleryVC = segue.destination as? BalanceGalleryViewController else { return }
    }
    }
}
