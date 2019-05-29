//
//  Hotel.swift
//  BusinessLogic
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

enum HotelErrors: Error {
    case cannotInitialize
}

public class Hotel {
    var id: String
    var name: String
    var imageName: String
    var date: Date

    init(id: String?, name: String?, imageName: String?, date: Date?) throws {
        guard let id = id, let name = name, let imageName = imageName, let date = date, name.count > 3 else {
            throw HotelErrors.cannotInitialize
        }

        self.id = id
        self.name = name
        self.imageName = imageName
        self.date = date
    }
}
