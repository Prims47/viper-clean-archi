//
//  SearchEngineViewController.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 04/02/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit

class SearchEngineViewController: UIViewController {
    // MARK: - Property

    var presenter: SearchEnginePresenterInput!

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

// MARK: - SearchEnginePresenterOutput

extension SearchEngineViewController: SearchEnginePresenterOutput {

}
