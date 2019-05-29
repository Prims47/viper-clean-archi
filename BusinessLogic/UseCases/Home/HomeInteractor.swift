//
//  HotelListInteractor.swift
//  BusinessLogic
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

class HomeInteractor {
    // MARK: - Properties

    weak var output: HomeInteractorOutput?
    private var bookingRepository: BookingRepositoryProtocol

    // MARK: - Init

    init(bookingRepository: BookingRepositoryProtocol) {
        self.bookingRepository = bookingRepository
    }
}

// MARK: - HotelListInteractorInput

extension HomeInteractor: HomeInteractorInput {
    func fetch() {
        self.bookingRepository.fetchMyCurrentBooking(success: {[weak self] booking in
            do {
                let booking = try Hotel(id: booking.id, name: booking.name, imageName: booking.imageName, date: booking.date)

                // Use case - Business rule
                if booking.date < Date() {
                    self?.output?.notifyErrorCurrentBooking()

                    return
                }

                self?.output?.didSuccessFetchMyCurrentBooking(HomeItem(id: booking.id,
                                                                       name: booking.name,
                                                                       imageName: booking.imageName,
                                                                       date: booking.date))
            } catch {
                self?.output?.didFailedFetch()
            }
        }, failure: {[weak self] _ in
            self?.output?.didFailedFetch()
        })
    }
}

// MARK: - HomeItemProtocol
private struct HomeItem: HomeItemProtocol {
    var id: String
    var name: String
    var imageName: String
    var date: Date
}
