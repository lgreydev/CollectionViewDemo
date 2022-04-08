//
//  SubclassedCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Sergey Lukaschuk on 08.04.2022.
//

import UIKit


class SubclassedCollectionViewCell: UICollectionViewCell {
    // must call super
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    // we have to implement this initializer, but will only ever use this class programmatically
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCell(colour: UIColor) {
        self.backgroundColor = colour
    }
}
