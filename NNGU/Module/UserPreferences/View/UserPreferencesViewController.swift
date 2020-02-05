//
//  UserPreferencesUserPreferencesViewController.swift
//  NNGU
//
//  Created by vladimir on 30/01/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

import UIKit

class UserPreferencesViewController: UIViewController, UserPreferencesViewInput {

    var baseExpenses: [Constants.BaseExpenses] = []
    var entertainmentExpenses: [Constants.EntertainmentExpenses] = []
    
    @IBOutlet weak var expenseBaseCollection: UICollectionView!
    @IBOutlet weak var expenseEntertainmentCollection: UICollectionView!
    @IBOutlet weak var baseCollectConstraint: NSLayoutConstraint!
    @IBOutlet weak var entertainmentCollectConstraint: NSLayoutConstraint!
    @IBOutlet weak var referenceButton: UIButton!
    @IBOutlet weak var infoTextView: UITextView!
    @IBOutlet weak var expensesTextField: UITextField!
    
    var output: UserPreferencesViewOutput!
    
    static var arrayOfExpenses: [String] = []
    var arrayOfUserExpenses: [String] = []
    var isTextViewHidden: Bool = true
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expenseBaseCollection.delegate = self
        expenseBaseCollection.dataSource = self
        expenseBaseCollection.allowsMultipleSelection = true
        expenseBaseCollection.tag = 1
        
        expenseEntertainmentCollection.delegate = self
        expenseEntertainmentCollection.dataSource = self
        expenseEntertainmentCollection.allowsMultipleSelection = true
        expenseEntertainmentCollection.tag = 2
        
        expensesTextField.returnKeyType = UIReturnKeyType.done
        expensesTextField.delegate = self
        
        infoTextView.isHidden = isTextViewHidden
        infoTextView.isEditable = false
        
        output.viewIsReady()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let baseHeight: CGFloat = expenseBaseCollection.contentSize.height
        let entertainmentHeight: CGFloat = expenseEntertainmentCollection.contentSize.height

        if baseHeight != 0.0 && baseCollectConstraint.constant != baseHeight {
            baseCollectConstraint.constant = baseHeight
        }
        
        if entertainmentHeight != 0.0 && entertainmentCollectConstraint.constant != entertainmentHeight {
            entertainmentCollectConstraint.constant = entertainmentHeight
        }
    }
    
    func showBaseExpensesCollect(_ collect: [Constants.BaseExpenses]) {
        baseExpenses = collect
        expenseBaseCollection.reloadData()
    }
    
    func showEntertainmentExpensesCollect(_ collect: [Constants.EntertainmentExpenses]) {
         entertainmentExpenses = collect
         expenseEntertainmentCollection.reloadData()
    }
    
    @IBAction func finishPressed(_ sender: Any) {
        print(UserPreferencesViewController.arrayOfExpenses)
        print("user array", arrayOfUserExpenses)
    }
    
    @IBAction func referenceButtonPressed(_ sender: Any) {
        isTextViewHidden = !isTextViewHidden
        infoTextView.isHidden = isTextViewHidden
    }
    
    // MARK: UserPreferencesViewInput
    func setupInitialState() {
    }
}

extension UserPreferencesViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1 {
            return baseExpenses.count
        }
        if collectionView.tag == 2 {
            return entertainmentExpenses.count
        }
        
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 1 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: costsCell.baseIdentifier, for: indexPath) as? costsCell else { preconditionFailure("Failed to load collection view cell")
            }
            
            cell.expenseName.text = self.baseExpenses[indexPath.item].getName()
            cell.expenseImage.image = self.baseExpenses[indexPath.item].getImage()
            
            return cell
        }
        if collectionView.tag == 2 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: costEntertainmentCell.entertainmentIdentifier, for: indexPath) as? costEntertainmentCell else { preconditionFailure("Failed to load collection view cell")
            }
            
            cell.expenseName.text = self.entertainmentExpenses[indexPath.item].getName()
            cell.expenseImage.image = self.entertainmentExpenses[indexPath.item].getImage()

            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {}
}

extension UserPreferencesViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            textField.resignFirstResponder()
            return false
        } else {
            arrayOfUserExpenses.append(textField.text!)
            textField.text = ""
            textField.resignFirstResponder()
            return false
        }
    }
}
