//
//  BalancePhotoViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 27.07.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
    }
    
    
}
