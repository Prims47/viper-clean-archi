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
}

// MARK: - HotelListInteractorInput

extension HomeInteractor: HomeInteractorInput {
    func fetch() {
        //TODO: call repo and output data
    }
}
