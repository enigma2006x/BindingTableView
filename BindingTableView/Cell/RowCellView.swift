//
//  RowCellView.swift
//  BindingTableView
//
//  Created by Antonio Trejo on 12/21/18.
//  Copyright © 2018 Antonio Trejo. All rights reserved.
//

import UIKit

class RowCellView: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var fruitImageView: UIImageView!
    
    func setupData(section: SectionModel, row: RowModel) {
        titleLabel.text = section.title
        descriptionLabel.text = row.text
        fruitImageView?.image = UIImage(named: row.image)
    }
}
