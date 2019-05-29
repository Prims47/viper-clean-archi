//
//  BookingRepository.swift
//  BusinessLogic
//
//  Created by Ilan Z on 29/05/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

public enum BookingRepositoryErrorResponse: Error {
    case server
    case network
    case noData
}

/// sourcery: AutoMockable
public protocol BookingRepositoryResponseProtocol {
    var id: String? { get }
    var name: String? { get }
    var imageName: String? { get }
    var date: Date? { get }
}

/// sourcery: AutoMockable
public protocol BookingRepositoryProtocol {
    func fetchMyCurrentBooking(success: @escaping (BookingRepositoryResponseProtocol) -> Void, failure: @escaping (BookingRepositoryErrorResponse) -> Void)
}
