//
//  HomePresenter.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit
import BusinessLogic

class HomePresenter {
    // MARK: - Properties
    
    weak var output: HomePresenterOutput?

    private var interactor: HomeInteractorInput
    private var router: HomeRouterInput

    // MARK: - Lifecycle
    init(interactor: HomeInteractorInput, router: HomeRouterInput) {
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - HomePresenterInput

extension HomePresenter: HomePresenterInput {
    func viewDidLoad() {
        interactor.fetch()
    }
}

extension HomePresenter: HomeInteractorOutput {
    func didSuccessFetchMyCurrentBooking(_ booking: HomeItemProtocol) {
        self.output?.displayBooking(HotelViewModel(id: booking.id,
                                                   name: booking.name,
                                                   image: UIImage(named: booking.imageName),
                                                   date: booking.date))
    }

    func notifyErrorCurrentBooking() {
        self.output?.displayErrorFetch(with: "Yo ! You don't have a current booking")
    }

    func didFailedFetch() {
        self.output?.displayErrorFetch(with: "Yo ! Something wrong !")
    }
}

// MARK: - HotelViewModelProtocol
private struct HotelViewModel: HotelViewModelProtocol {
    var id: String
    var name: String
    var image: UIImage?
    var date: Date
}
