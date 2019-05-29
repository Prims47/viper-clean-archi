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
    func interactor(bookingRepository: BookingRepositoryProtocol) -> HomeInteractorInput
}

public final class HomeModuleFactory: HomeModuleFactoryInput {

    // MARK: - Lifecycle

    public init() {}

    public func interactor(bookingRepository: BookingRepositoryProtocol) -> HomeInteractorInput {
        let interactor = HomeInteractor(bookingRepository: bookingRepository)

        return interactor
    }
}
