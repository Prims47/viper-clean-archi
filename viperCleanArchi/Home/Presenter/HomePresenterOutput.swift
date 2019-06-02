//
//  HomePresenterOutput.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
protocol HomePresenterOutput: class {
    func displayBooking(_ booking: HotelViewModelProtocol)
    func displayErrorFetch(with message: String)
}
