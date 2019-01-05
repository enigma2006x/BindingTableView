//
//  UITableView+Ext.swift
//  BindingTableView
//
//  Created by Antonio Trejo on 12/21/18.
//  Copyright © 2018 Antonio Trejo. All rights reserved.
//

import UIKit

extension UITableView {
    func registerClass<T: UITableViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.reuseIdentifier)
    }
    
    func registerCellFromNib<T: UITableViewCell>(_ cellClass: T.Type) {
        register(UINib(nibName: cellClass.reuseIdentifier, bundle: nil), forCellReuseIdentifier: cellClass.reuseIdentifier)
    }
    
    func dequeue<T: UITableViewCell>() -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier) as? T else {
            fatalError("Cannot dequeue a cell with identifier \(T.reuseIdentifier)")
        }
        
        return cell
    }
    
    func dequeue<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Cannot dequeue a cell with identifier \(T.reuseIdentifier)")
        }
        return cell
    }
}

