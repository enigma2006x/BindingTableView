//
//  RxTableViewController.swift
//  BindingTableView
//
//  Created by Antonio Trejo on 12/21/18.
//  Copyright © 2018 Antonio Trejo. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class RxTableViewController: UIViewController {
     // MARK: IBOutlet(s)
    @IBOutlet weak var tableView: UITableView!
     // MARK: Properties
    fileprivate let disposeBag = DisposeBag()
    fileprivate let sections = {
        return data
    }()
     // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerCellFromNib(RowCellView.self)
        Observable.just(sections)
            .bind(to: tableView.rx.items(dataSource: dataSource()))
            .disposed(by: disposeBag)
        
    }
}

extension RxTableViewController {
    // MARK: Additional Methods
    func dataSource() -> RxTableViewSectionedReloadDataSource<SectionModel> {
        return RxTableViewSectionedReloadDataSource<SectionModel>(
            configureCell: { dataSource, tableView, indexPath, item in
                let section = dataSource[indexPath.section]
                let row = section.rows[indexPath.row]
                let cell: RowCellView = tableView.dequeue(for: indexPath)
                cell.setupData(section: section, row: row)
                return cell
        })
    }
}

extension SectionModel: SectionModelType {
    typealias Item = RowModel
    
    var items: [RowModel] {
        return rows
    }
    
    init(original: SectionModel, items: [Item]) {
        self = original
        self.rows = items
    }
}
