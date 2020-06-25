//
//  SearchResultsViewController.swift
//  TvOSKeyboardCollapses
//
//  Created by David Cordero on 25.06.20.
//  Copyright © 2020 David Cordero. All rights reserved.
//

import UIKit


private var dummyItems = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve"]

final class SearchResultsViewController: UIViewController, UICollectionViewDataSource, UISearchResultsUpdating {
    
    private var items: [String] = dummyItems
    
    func updateSearchResults(for searchController: UISearchController) {
        items = dummyItems
        collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .magenta
        SearchResultsViewCell.register(in: collectionView)
        collectionView.dataSource = self
        return collectionView
    }()
    
    private func setUpView() {
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
        view.heightAnchor.constraint(equalToConstant: 400).isActive = true
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchResultsViewCell.reuseIdentifier, for: indexPath) as! SearchResultsViewCell
        cell.titleLabel.text = items[indexPath.row]
        return cell
    }
}
