//
//  UIView+Extensions.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 04/02/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit

extension UIView {

    @discardableResult
    public func prepareForAutoLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }

    public func pinToSuperview<LayoutAnchorType, Axis>(_ from: KeyPath<UIView, LayoutAnchorType>,
                                                       to: KeyPath<UIView, LayoutAnchorType>,
                                                       constant: CGFloat = 0) -> NSLayoutConstraint
        where LayoutAnchorType: NSLayoutAnchor<Axis> {
            guard let parent = superview else { fatalError("must addSubview first") }

            let source = self[keyPath: from]
            let target = parent[keyPath: to]
            return source.constraint(equalTo: target, constant: constant)
    }

    public func pinToSuperview<LayoutAnchorType, Axis>(_ anchor: KeyPath<UIView, LayoutAnchorType>,
                                                       constant: CGFloat = 0) -> NSLayoutConstraint
        where LayoutAnchorType: NSLayoutAnchor<Axis> {
            return pinToSuperview(anchor, to: anchor, constant: constant)
    }
}

// MARK: Protocol Definition
/// Make your UIView subclasses conform to this protocol when:
///  * they *are* NIB-based, and
///  * this class is used as the XIB's root view
///
/// to be able to instantiate them from the NIB in a type-safe manner
public protocol NibLoadable: class {
    /// The nib file to use to load a new instance of the View designed in a XIB
    static var nib: UINib { get }
}

// MARK: Default implementation
public extension NibLoadable {
    /// By default, use the nib which have the same name as the name of the class,
    /// and located in the bundle of that class
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
    }
}

// MARK: Support for instantiation from NIB
public extension NibLoadable where Self: UIView {
    /**
     Returns a `UIView` object instantiated from nib
     - returns: A `NibLoadable`, `UIView` instance
     */
    static func loadFromNib() -> Self {
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? Self else {
            fatalError("The nib \(nib) expected its root view to be of type \(self)")
        }
        return view
    }
}
