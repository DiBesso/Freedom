//
//  BalanceGalleryViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 16.07.2022.
//

import UIKit
private let reuseIdentifier = "Cell"

class BalanceGalleryCollectionViewController: UICollectionViewController {
    
    var photos = Photos ()
    var constant = ConstantForCollectionView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = .zero
        
        navigationController?.navigationBar.tintColor = .white
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "balancePhotoSegue" {
            let bPhotoVC = segue.destination as! BalancePhotoViewController
            let cell = sender as! BalanceCollectionViewCell
            bPhotoVC.image = cell.balancePhotoImageView.image
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.balancePhotos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "balanceCell", for: indexPath) as! BalanceCollectionViewCell
        
        let imageName = photos.balancePhotos[indexPath.item]
        let image = UIImage(named: imageName)
        
        cell.balancePhotoImageView.image = image
        
        return cell
    }
    
    
    
}

extension BalanceGalleryCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingWidth = constant.sectionInserts.left * (constant.itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / constant.itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return constant.sectionInserts
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return constant.sectionInserts.left
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return constant.sectionInserts.left
    }
}
