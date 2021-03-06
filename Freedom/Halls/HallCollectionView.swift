//
//  GalleryCollectionView.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 19.03.2022.
//

import UIKit

class HallCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    public weak var hallDelegate: HallCollectionProtocol?
    
    var cells = [FreedomModel]()

    init () {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = .zero
        
        super.init(frame: .zero, collectionViewLayout: layout)
        
        delegate = self
        dataSource = self
        register(HallCollectionViewCell.self, forCellWithReuseIdentifier: HallCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constants.hallMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
    }
    
    func set(cells: [FreedomModel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: HallCollectionViewCell.reuseId, for: indexPath) as! HallCollectionViewCell
        
        cell.hallImageView.image = cells[indexPath.row].hallImage
        cell.hallNameLabel.text = cells[indexPath.row].hallName
        cell.descriptionLabel.text = cells[indexPath.row].description
        cell.priceLabel.text = "Аренда: \(cells[indexPath.row].price)руб/час"
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        hallDelegate?.didSelect(indexPath.row)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.hallItemWidth, height: frame.height * 0.99)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
