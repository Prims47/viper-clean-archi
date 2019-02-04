//
//  SplashScreenInteractorModuleFactory.swift
//  BusinessLogic
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol SearchEngineModuleFactoryProtocol {
    func interactor() -> SearchEngineInteractorInput
}

public final class SearchEngineModuleFactory: SearchEngineModuleFactoryProtocol {
    public init() {}

    public func interactor() -> SearchEngineInteractorInput {
        let interactor = SearchEngineInteractor()

        return interactor
    }
}
