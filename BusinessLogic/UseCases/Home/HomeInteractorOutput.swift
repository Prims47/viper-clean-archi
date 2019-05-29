//
//  HotelListInteractorOutput.swift
//  BusinessLogic
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol HomeItemProtocol {
    var id: String { get }
    var name: String { get }
    var imageName: String { get }
    var date: Date { get }
}

/// sourcery: AutoMockable
public protocol HomeInteractorOutput: class {
    func didSuccessFetchMyCurrentBooking(_ booking: HomeItemProtocol)
    func didFailedFetch()
    func notifyErrorCurrentBooking()
}
