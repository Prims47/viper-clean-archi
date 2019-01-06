//
//  SplashScreenViewController.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {
    // MARK: - Property

    var presenter: SplashScreenPresenterInput!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

// MARK: - SplashScreenPresenterOutput

extension SplashScreenViewController: SplashScreenPresenterOutput {

}
