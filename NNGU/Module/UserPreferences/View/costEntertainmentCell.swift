//
//  costEntertainmentCell.swift
//  NNGU
//
//  Created by Nechesanov Vladimir on 05.02.2020.
//  Copyright © 2020 Nechesanov Vladimir. All rights reserved.
//

import Foundation
import UIKit

class costEntertainmentCell: UICollectionViewCell {
    
    static var entertainmentIdentifier: String = "costIdentifierEntertainment"
    
    @IBOutlet weak var expenseImage: UIImageView!
    @IBOutlet weak var expenseName: UILabel!
    @IBOutlet weak var entertainmentView: UIView!
    
    
    func getSelectedImage(str: String) -> UIImage {
        switch str {
        case "taxi":
            return UIImage(named: "taxiSelected")!
        case "museums":
            return UIImage(named: "museumSelected")!
        case "cinema":
            return UIImage(named: "filmSelected")!
        case "fast food":
            return UIImage(named: "restaurantSelected")!
        case "traveling":
            return UIImage(named: "travelingSelected")!
        default:
            return UIImage(named: "travelingSelected")!
        }
    }
    
    func getImage(str: String) -> UIImage {
        switch str {
        case "taxi":
            return UIImage(named: "taxi")!
        case "museums":
            return UIImage(named: "museum")!
        case "cinema":
            return UIImage(named: "film")!
        case "fast food":
            return UIImage(named: "restaurant")!
        case "traveling":
            return UIImage(named: "traveling")!
        default:
            return UIImage(named: "traveling")!
        }
    }
    
    override var isSelected: Bool {
        didSet {
            expenseImage.image = getSelectedImage(str: expenseName.text!)
            UserPreferencesViewController.arrayOfExpenses.append(expenseName.text!)

            if entertainmentView.isHidden == isSelected {
                expenseImage.image = getImage(str: expenseName.text!)
            }
        }
    }
}
