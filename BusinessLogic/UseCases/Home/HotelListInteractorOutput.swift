//
//  HotelListInteractorOutput.swift
//  BusinessLogic
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol HomeInteractorOutput: class {
    func didSuccessFetch(hotels: [Hotel])
    func didFailedFetch()
}
