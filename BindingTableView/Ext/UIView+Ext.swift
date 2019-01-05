//
//  UIView+Ext.swift
//  BindingTableView
//
//  Created by Antonio Trejo on 12/21/18.
//  Copyright © 2018 Antonio Trejo. All rights reserved.
//

import UIKit

protocol Reusable {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UIView: Reusable {}

extension UIView {
    static func instantiateFromNib<T: UIView>(_ viewClass: T.Type) -> T? {
        return UINib(nibName: viewClass.reuseIdentifier, bundle: nil).instantiate(withOwner: nil, options: nil).first as? T
    }
    
    static func viewFromNib<T: UIView>(_ viewClass: T.Type) -> T {
        guard let view = instantiateFromNib(viewClass) else {
            fatalError("Cannot found a Nib with identifier \(T.reuseIdentifier)")
        }
        return view
    }
}
