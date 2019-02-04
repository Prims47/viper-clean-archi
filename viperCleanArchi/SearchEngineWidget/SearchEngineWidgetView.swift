//
//  SearchEngineWidgetView.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 04/02/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit

class SearchEngineWidgetView: UIView, NibLoadable {
    // MARK: - Property

    var presenter: SearchEngineWidgetPresenterInput!

    weak var delegate: SearchEngineWidgetDelegate?
}

// MARK: - SearchEngineWidgetPresenterOutput
extension SearchEngineWidgetView : SearchEngineWidgetPresenterOutput {

}
