//
//  SearchEngineWidgetView.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 04/02/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit

class SearchEngineWidgetView: UIView, NibLoadable {
    // MARK: - Constantsq

    private enum Constants {
        static let cornerRaduis: CGFloat = 5
    }

    // MARK: - Outlet

    @IBOutlet private weak var searchEngineView: UIView!
    @IBOutlet private weak var searchDestinationStackView: UIStackView!
    @IBOutlet private weak var calendarView: UIView!
    
    // MARK: - Property

    var presenter: SearchEngineWidgetPresenterInput!

    weak var delegate: SearchEngineWidgetDelegate?

    // MARK: - Lifecycle

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.setupUI()

        searchDestinationStackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapSearchDestinationButton)))
        calendarView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapCalendarButton)))
    }

    private func setupUI() {
        self.searchEngineView.layer.cornerRadius = Constants.cornerRaduis
        self.calendarView.layer.cornerRadius = Constants.cornerRaduis
    }

    @objc private func didTapSearchDestinationButton() {
        delegate?.searchEngineWidgetDidSelectDestination()
    }

    @objc private func didTapCalendarButton() {
        delegate?.searchEngineWidgetDidSelectCalendar()
    }
}

// MARK: - SearchEngineWidgetPresenterOutput
extension SearchEngineWidgetView : SearchEngineWidgetPresenterOutput {

}
