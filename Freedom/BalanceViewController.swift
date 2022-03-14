//
//  BalanceViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 14.03.2022.
//

import UIKit

class BalanceViewController: UIPageViewController {

    let imageNames = ["_8wX7thvOPw", "5-22Dc0hAbM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    func showViewControllerAtIndex(_ index: Int) -> BalanceContentVC? {
        
        guard index >= 0 else { return nil}
        guard index < imageNames.count else { return nil}
        guard let balanceContentVC = storyboard?.instantiateViewController(withIdentifier: "BalanceContentVC") as? BalanceContentVC else { return nil }
        
        balanceContentVC.currentPage = index
        balanceContentVC.numberOfPage = imageNames.count
        balanceContentVC.imageView.image = UIImage(named: imageNames[index])
        
        return balanceContentVC
    }

}
