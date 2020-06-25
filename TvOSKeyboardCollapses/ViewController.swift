//
//  ViewController.swift
//  TvOSKeyboardCollapses
//
//  Created by David Cordero on 25.06.20.
//  Copyright © 2020 David Cordero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK - Actions
    
    @IBAction func openTheKeyboardButtonWasPressed(_ sender: Any) {
        let searchResultsVC = SearchResultsViewController()
        
        let searchController = UISearchController(searchResultsController: searchResultsVC)
        searchController.searchResultsUpdater = searchResultsVC
        searchController.searchBar.placeholder = NSLocalizedString("Enter keyword (e.g. iceland)", comment: "")
        
        let searchContainer = UISearchContainerViewController(searchController: searchController)
        searchContainer.title = NSLocalizedString("Search", comment: "")
        
        let searchNavigationController = UINavigationController(rootViewController: searchContainer)
        
        present(searchNavigationController, animated: true, completion: nil)
    }
}
