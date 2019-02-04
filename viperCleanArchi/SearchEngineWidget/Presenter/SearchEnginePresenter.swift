//
//  SearchEnginePresenter.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 04/02/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation
import BusinessLogic

class SearchEngineWidgetPresenter {
    // MARK: - Properties

    weak var output: SearchEngineWidgetPresenterOutput?

    private var interactor: SearchEngineWidgetInteractorInput

    // MARK: - Lifecycle

    init(interactor: SearchEngineWidgetInteractorInput) {
        self.interactor = interactor
    }
}

// MARK: - SearchEngineWidgetPresenterInput
extension SearchEngineWidgetPresenter: SearchEngineWidgetPresenterInput {

}

// MARK: - SearchEngineWidgetPresenterInput
extension SearchEngineWidgetPresenter: SearchEngineWidgetInteractorOutput {

}
