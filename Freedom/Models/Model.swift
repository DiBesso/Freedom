//
//  File.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 19.03.2022.
//

import Foundation
import UIKit

struct FreedomModel {
    let hallName: String
    var hallImage: UIImage
    let price: Int
    let description: String
    
    static func fetchHall() -> [FreedomModel] {
        
        let balanceHall = FreedomModel(hallName: "Баланс",
                                       hallImage: UIImage(named: "5-22Dc0hAbM")!,
                                       price: 1700,
                                       description: "Классический интерьер, изящные детали, солнечный свет - идеальные составляющие для Вашей фотосессии")
        
        let simpleHall = FreedomModel(hallName: "Simple",
                                      hallImage: UIImage(named: "simple1")!,
                                      price: 1500,
                                      description: "Просторный зал с циклорамой и перекатными конструкциями")
        
        let gatsbyHall = FreedomModel(hallName: "Гэтсби",
                                      hallImage: UIImage(named: "gatsby1")!,
                                      price: 1700,
                                      description: "Гэтсби идеально пдходит для имиджевых съёмок, портфолио, instagram-контента, а также для каталогов интернет-магазинов")
        
        let fantasyHall = FreedomModel(hallName: "Fantasy",
                                       hallImage: UIImage(named: "fantasy1")!,
                                       price: 2000,
                                       description: "Очень красочный и по-настоящему летний зал с разнообразными локациями")
        return [balanceHall, gatsbyHall, simpleHall , fantasyHall]
    }
    
}

struct Constants {
    static let leftDistanceToView: CGFloat = 15
    static let rightDistanceToView: CGFloat = 15
    static let hallMinimumLineSpacing: CGFloat = 15
    static let hallItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.hallMinimumLineSpacing / 2))
    static let height = (UIScreen.main.bounds.height * 0.99)
}

struct Photos {
    let balancePhotos = ["b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8"]
    let gatsbyPhotos = ["g1", "g2", "g3", "g4", "g5", "g6", "g7", "g8", "g9", "gatsby1"]
    let simplePhotos = ["simple1", "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9"]
    let fantasyPhotos = ["f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9", "f10", "f11", "f12", "f13"]
}

struct ConstantForCollectionView {
    
    let itemsPerRow: CGFloat = 2
    let sectionInserts =  UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
}
