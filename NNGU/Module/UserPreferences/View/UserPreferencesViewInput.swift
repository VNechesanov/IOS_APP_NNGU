//
//  UserPreferencesUserPreferencesViewInput.swift
//  NNGU
//
//  Created by vladimir on 30/01/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

protocol UserPreferencesViewInput: class {
    func showBaseExpensesCollect(_ collect: [Constants.BaseExpenses])
    func showEntertainmentExpensesCollect(_ collect: [Constants.EntertainmentExpenses])
    func setUpPreferences()
    func setupInitialState()
}
