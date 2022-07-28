//
//  FantasyGalleryCollectionViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 24.07.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class FantasyGalleryCollectionViewController: UICollectionViewController {
    
    
    var photos = Photos()
    var constant = ConstantForCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = .zero
        
        
        navigationController?.navigationBar.tintColor = .white
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fantasyPhotoSegue" {
            let bPhotoVC = segue.destination as! PhotoViewController
            let cell = sender as! FantasyCell
            bPhotoVC.image = cell.fantasyPhotoImageView.image
        }
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.fantasyPhotos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fantasyCell", for: indexPath) as! FantasyCell
        
        let imageName = photos.fantasyPhotos[indexPath.item]
        let image = UIImage(named: imageName)
        
        cell.fantasyPhotoImageView.image = image
        
        return cell
    }
}

extension FantasyGalleryCollectionViewController: UICollectionViewDelegateFlowLayout {
    
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
