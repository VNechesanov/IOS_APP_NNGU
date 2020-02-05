//
//  UserPreferencesUserPreferencesPresenter.swift
//  NNGU
//
//  Created by vladimir on 30/01/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

class UserPreferencesPresenter: UserPreferencesModuleInput, UserPreferencesViewOutput, UserPreferencesInteractorOutput {

    weak var view: UserPreferencesViewInput!
    var interactor: UserPreferencesInteractorInput!
    var router: UserPreferencesRouterInput!
    
    func viewIsReady() {
        view.setUpPreferences()
        view.showBaseExpensesCollect([Constants.BaseExpenses.utilities,Constants.BaseExpenses.foodProducts, Constants.BaseExpenses.medicine, Constants.BaseExpenses.clothes,])
        
        view.showEntertainmentExpensesCollect([Constants.EntertainmentExpenses.cinema, Constants.EntertainmentExpenses.fastFood, Constants.EntertainmentExpenses.museums, Constants.EntertainmentExpenses.taxi, Constants.EntertainmentExpenses.traveling])
    }
}
