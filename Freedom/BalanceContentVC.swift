//
//  BalanceContentVC.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 14.03.2022.
//

import UIKit

class BalanceContentVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentPage = 0
    var numberOfPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "5-22Dc0hAbM")
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = numberOfPage
      
    }
    



}
