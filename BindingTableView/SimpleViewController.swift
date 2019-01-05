//
//  SimpleTableViewController.swift
//  BindingTableView
//
//  Created by Antonio Trejo on 12/21/18.
//  Copyright © 2018 Antonio Trejo. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController {
     // MARK: IBOutlet(s)
    @IBOutlet weak var tableView: UITableView!
     // MARK: Properties
    fileprivate let sections = {
        return data
    }()
     // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerCellFromNib(RowCellView.self)
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension SimpleTableViewController: UITableViewDataSource  {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = sections[section]
        return section.rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = sections[indexPath.section]
        let row = section.rows[indexPath.row]
        let cell: RowCellView = tableView.dequeue(for: indexPath)
        cell.setupData(section: section, row: row)
        return cell
    }
}

extension SimpleTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
