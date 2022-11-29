//
//  CollectionViewTableViewCell.swift
//  Netflix Clone 2022
//
//  Created by Kenan Developer on 29.11.2022.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    
    static let identifier = "CollectionViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError() 
    }
}
