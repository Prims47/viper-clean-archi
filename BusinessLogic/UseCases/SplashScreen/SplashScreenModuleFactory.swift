//
//  SplashScreenInteractorModuleFactory.swift
//  BusinessLogic
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol SplashScreenModuleFactoryProtocol {
    func interactor() -> SplashScreenInteractorInput
}

public final class SplashScreenModuleFactory: SplashScreenModuleFactoryProtocol {
    public init() {}

    public func interactor() -> SplashScreenInteractorInput {
        let interactor = SplashScreenInteractor()

        return interactor
    }
}
