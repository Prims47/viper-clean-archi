//
//  HotelListModuleFactory.swift
//  BusinessLogic
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol HomeModuleFactoryInput: class {
    func interactor() -> HomeInteractorInput
}

public final class HomeModuleFactory: HomeModuleFactoryInput {
    
    public init() {}

    public func interactor() -> HomeInteractorInput {
        let interactor = HomeInteractor()

        return interactor
    }
}
