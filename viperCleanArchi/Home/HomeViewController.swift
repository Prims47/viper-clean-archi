//
//  ViewController.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - Outlets

    @IBOutlet private weak var searchEngineWidgetViewContainer: UIView!

    // MARK: - Property

    var presenter: HomePresenterInput!

    var searchEngineWidgetModuleFactory: SearchEngineWidgetModuleFactory!

    private var searchEngineWidgetView: SearchEngineWidgetView? {
        didSet {
            setupSearchEngineWidgetView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()

        //TODO
//        presenter.viewDidLoad()
    }

    private func setupUI() {
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = UIColor(named: .defaultBackground)

        self.setupModuleFactory()
    }

    private func setupModuleFactory() {
        searchEngineWidgetView = searchEngineWidgetModuleFactory.makeView(withDelegate: self)
    }

    private func setupSearchEngineWidgetView() {
        guard let searchEngineWidgetView = searchEngineWidgetView else { return }
        searchEngineWidgetViewContainer.addSubview(searchEngineWidgetView)
        searchEngineWidgetView.prepareForAutoLayout()
        NSLayoutConstraint.activate([
            searchEngineWidgetView.pinToSuperview(\UIView.topAnchor),
            searchEngineWidgetView.pinToSuperview(\UIView.leadingAnchor, constant: 16),
            searchEngineWidgetView.pinToSuperview(\UIView.trailingAnchor, constant: -16),
            searchEngineWidgetView.pinToSuperview(\UIView.bottomAnchor)
            ])
        searchEngineWidgetViewContainer.layoutIfNeeded()
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

// MARK: - SearchEngineWidgetDelegate
extension HomeViewController: SearchEngineWidgetDelegate {
    func searchEngineWidgetDidSelectDestination() {
        //TODO
    }
}
