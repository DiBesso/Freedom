//
//  BalanceCollectionViewCell.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 19.03.2022.
//

import UIKit

class HallCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "HallCollectionViewCell"
    
    let hallNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    let hallImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    } ()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    } ()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    var moreButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.blue, for: .normal)
        button.contentHorizontalAlignment = .left
        return button
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(hallImageView)
        addSubview(hallNameLabel)
        addSubview(descriptionLabel)
        addSubview(priceLabel)
        addSubview(moreButton)
        
        backgroundColor = .white
        
        hallImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        hallImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        hallImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        hallImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2).isActive = true
        
        
        hallNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        hallNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        hallNameLabel.topAnchor.constraint(equalTo: hallImageView.bottomAnchor, constant: 10).isActive = true
        
        
        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: hallNameLabel.bottomAnchor, constant: 10).isActive = true
        descriptionLabel.widthAnchor.constraint(equalTo: widthAnchor,multiplier: 3/4, constant: 10).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
        priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        priceLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 40).isActive = true
        
        moreButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        moreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        moreButton.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 8)
        
        self.clipsToBounds = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

