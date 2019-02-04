//
//  SearchEngineWidgetModuleFactory.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 04/02/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation
import BusinessLogic

class SearchEngineWidgetModuleFactory {
    func makeView(withDelegate delegate: SearchEngineWidgetDelegate? = nil) -> SearchEngineWidgetView {
        let moduleFactory = BusinessLogic.SearchEngineWidgetModuleFactory()
        let interactor = moduleFactory.interactor()

        let presenter = SearchEngineWidgetPresenter(interactor: interactor)
        interactor.output = presenter

        let view = SearchEngineWidgetView.loadFromNib()
        view.presenter = presenter
        view.delegate = delegate
        presenter.output = view

        return view
    }
}
