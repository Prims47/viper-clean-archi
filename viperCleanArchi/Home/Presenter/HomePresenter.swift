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
    func didSuccessFetch(hotels: [Hotel]) {
        output?.displayHotelList(hotels: hotels.compactMap {
            guard let image = UIImage(named: $0.imageName) else {
                return nil
            }

            return HotelViewModel(id: $0.id, name: $0.name, image: image)
        })
    }

    func didFailedFetch() {
    }
}

private struct HotelViewModel: HotelViewModelProtocol {
    var id: String
    var name: String
    var image: UIImage
}
