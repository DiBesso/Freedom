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
    static let leftDistanceToView: CGFloat = 20
    static let rightDistanceToView: CGFloat = 20
    static let hallMinimumLineSpacing: CGFloat = 15
    static let hallItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.hallMinimumLineSpacing / 2))

}
