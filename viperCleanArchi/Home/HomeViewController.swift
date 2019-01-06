//
//  ViewController.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - Property

    var presenter: HomePresenterInput!

    override func viewDidLoad() {
        super.viewDidLoad()

//        presenter.viewDidLoad()
    }

}

// MARK: - HomePresenterOutput

extension HomeViewController: HomePresenterOutput {
    func displayHotelList(hotels: [HotelViewModelProtocol]) {
        //TODO
    }
    
    func displayErrorFetchHotelList(with message: String) {
        //TODO
    }
}
