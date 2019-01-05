//
//  SectionModel.swift
//  BindingTableView
//
//  Created by Antonio Trejo on 12/22/18.
//  Copyright © 2018 Antonio Trejo. All rights reserved.
//

import Foundation

struct RowModel {
    let text: String
    let image: String
}

struct SectionModel {
    let title: String
    var rows: [RowModel]
}

let data = [
    SectionModel(title: "Section 1",
                 rows: [
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Apple"),
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Banana"),
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Cantaloupe")
        ]),
    SectionModel(title: "Section 2",
                 rows: [
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Apple"),
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Banana"),
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Cantaloupe")
        ]),
    SectionModel(title: "Section 3",
                 rows: [
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Apple"),
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Banana"),
                    RowModel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "Cantaloupe")
        ])
]
