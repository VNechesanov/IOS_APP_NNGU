//
//  costsCell.swift
//  NNGU
//
//  Created by Nechesanov Vladimir on 04.02.2020.
//  Copyright © 2020 Nechesanov Vladimir. All rights reserved.
//

import Foundation
import UIKit

class costsCell: UICollectionViewCell {

    static var baseIdentifier: String = "costIdentifierBase"
    
    @IBOutlet weak var expenseImage: UIImageView!
    @IBOutlet weak var expenseName: UILabel!
    @IBOutlet weak var baseExpenseView: UIView!
    
    func getSelectedImage(str: String) -> UIImage {
        switch str {
        case "utilities":
            return UIImage(named: "utilitiesSelected")!
        case "food products":
            return UIImage(named: "foodProductSelected")!
        case "medicine":
            return UIImage(named: "medicineSelected")!
        case "clothes":
            return UIImage(named: "clothesSelected")!
        default:
            return UIImage(named: "clothesSelected")!
        }
    }
    
    func getImage(str: String) -> UIImage {
        switch str {
        case "utilities":
            return UIImage(named: "utilities")!
        case "food products":
            return UIImage(named: "foodProduct")!
        case "medicine":
            return UIImage(named: "medicine")!
        case "clothes":
            return UIImage(named: "clothes")!
        default:
             return UIImage(named: "clothesSelected")!
        }
    }
    
    override var isSelected: Bool {
        didSet {
            expenseImage.image = getSelectedImage(str: expenseName.text!)
            UserPreferencesViewController.arrayOfExpenses.append(expenseName.text!)
            
            if baseExpenseView.isHidden == isSelected {
                expenseImage.image = getImage(str: expenseName.text!)
            }
        }
    }
}
