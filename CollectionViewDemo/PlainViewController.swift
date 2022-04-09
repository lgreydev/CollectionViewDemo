//
//  PlainViewController.swift
//  CollectionViewDemo
//
//  Created by Sergey Lukaschuk on 07.04.2022.
//

import Foundation
import UIKit


class PlainViewController: UIViewController {

    var data = [UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green, UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green, UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green, UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green]

    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSelf()
        setUpStackView()
    }
}

// MARK: - Configure
extension PlainViewController {

    private func setUpSelf() {
        // create a layout to be used
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        // make sure that there is a slightly larger gap at the top of each row
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        // set a standard item size of 60 * 60
        layout.itemSize = CGSize(width: 60, height: 60)
        // the layout scrolls horizontally
        layout.scrollDirection = .horizontal
        // set the frame and layout
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        // set the view to be this UICollectionView
        self.view = collectionView
    }

    private func setUpStackView() {
        title = "PlainViewController"
        view.backgroundColor = .red
           // set the dataSource
           collectionView.dataSource = self
           // set the delegate
           collectionView.delegate = self
           // register the standard cell
            collectionView.register(SubclassedCollectionViewCell.self, forCellWithReuseIdentifier: "SubclassedCell")
           // bounce at the bottom of the collection view
           collectionView.alwaysBounceVertical = true
           // set the background to be white
           collectionView.backgroundColor = .white
    }
}


// MARK: - Delegate DataSource
extension PlainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubclassedCell", for: indexPath) as! SubclassedCollectionViewCell
        let data = data[indexPath.row]
        cell.setupCell(colour: data)
        return cell
    }

    // if the user clicks on a cell, display a message
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Collection view at row \(collectionView.tag) selected index path \(indexPath)")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // the number of cells are wholly dependent on the number of colours
        data.count
    }
}
