//
//  BookingDataProxy.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 29/05/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation
import BusinessLogic

class BookingDataProxy {

}

// MARK: - BookingRepositoryProtocol

extension BookingDataProxy: BookingRepositoryProtocol {
    func fetchMyCurrentBooking(success: @escaping (BookingRepositoryResponseProtocol) -> Void,
                               failure: @escaping (BookingRepositoryErrorResponse) -> Void) {
        success(BookingRepositoryResponse(id: "1", name: "Ilan Hotel", imageName: "https://image.fr", date: Date()))
    }
}

// MARK: - BookingRepositoryResponseProtocol

private struct BookingRepositoryResponse: BookingRepositoryResponseProtocol {
    var id: String?
    var name: String?
    var imageName: String?
    var date: Date?
}
