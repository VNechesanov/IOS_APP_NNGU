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

    }
}
