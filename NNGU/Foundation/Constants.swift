//
//  Constants.swift
//  NNGU
//
//  Created by Nechesanov Vladimir on 04.02.2020.
//  Copyright © 2020 Nechesanov Vladimir. All rights reserved.
//

import Foundation
import UIKit

enum Constants {
    
    enum BaseExpenses: Int {
        case utilities = 0
        case foodProducts = 1
        case medicine = 2
        case clothes = 3
        
        func getName() -> String {
            switch self {
            case .utilities:
                return "utilities"
            case .foodProducts:
                return "food products"
            case .medicine:
                return "medicine"
            case .clothes:
                return "clothes"
            }
        }
        
        func getImage() -> UIImage {
            switch self {
            case .utilities:
                return UIImage(named: "utilities")!
            case .foodProducts:
                return UIImage(named: "foodProduct")!
            case .medicine:
                return UIImage(named: "medicine")!
            case .clothes:
                return UIImage(named: "clothes")!
            }
        }
        
//        func getSelectedImage(str: String) -> UIImage {
//            switch str {
//            case "utilities":
//                return UIImage(named: "utilitiesSelected")!
//            case "foodProducts":
//                return UIImage(named: "foodProductSelected")!
//            case "medicine":
//                return UIImage(named: "medicineSelected")!
//            case "clothes":
//                return UIImage(named: "clothesSelected")!
//            default:
//                return UIImage(named: "clothesSelected")!
//            }
//        }
    }
    
    enum EntertainmentExpenses: Int {
        case taxi = 0
        case museums = 1
        case cinema = 2
        case fastFood = 3
        case traveling = 4
        
        func getName() -> String {
            switch self {
            case .taxi:
                return "taxi"
            case .museums:
                return "museums"
            case .cinema:
                return "cinema"
            case .fastFood:
                return "fast food"
            case .traveling:
                return "traveling"
            }
        }
        
        func getImage() -> UIImage {
            switch self {
            case .taxi:
                return UIImage(named: "taxi")!
            case .museums:
                return UIImage(named: "museum")!
            case .cinema:
                return UIImage(named: "film")!
            case .fastFood:
                return UIImage(named: "restaurant")!
            case .traveling:
                return UIImage(named: "traveling")!
            }
        }
    }
}
