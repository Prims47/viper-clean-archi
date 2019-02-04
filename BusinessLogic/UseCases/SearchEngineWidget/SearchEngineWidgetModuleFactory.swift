//
//  SplashScreenInteractorModuleFactory.swift
//  BusinessLogic
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol SearchEngineWidgetModuleFactoryProtocol {
    func interactor() -> SearchEngineWidgetInteractorInput
}

// MARK: - SearchEngineWidgetModuleFactoryProtocol

public final class SearchEngineWidgetModuleFactory: SearchEngineWidgetModuleFactoryProtocol {
    public init() {}

    public func interactor() -> SearchEngineWidgetInteractorInput {
        let interactor = SearchEngineWidgetInteractor()

        return interactor
    }
}
