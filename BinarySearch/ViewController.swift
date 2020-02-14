//
//  ViewController.swift
//  BinarySearch
//
//  Created by Thiago Lourin on 13/02/20.
//  Copyright © 2020 Lourin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var array: [Int] = [1, 2, 4, 8, 9, 10, 32]
    var filtered: Int?
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }
    
    let identifier = "cell"
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search your number"
        navigationItem.searchController = searchController
        
        definesPresentationContext = false
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (isFiltering && filtered != nil) {
            return 1
        }
        
        if (filtered == nil && isFiltering) {
            return 0
        }
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TableViewCell
        
        if isFiltering {
            cell.label.text = "Your index is \(filtered!)"
        } else {
            cell.label.text = String(array[indexPath.row])
        }
        
        
        return cell
    }
    
    private func filterContent(_ searchText: String) {                    
        filtered = BinarySearcher().search(array: array, key: Int(searchText)!, range: 0..<array.count)
        tableView.reloadData()
    }
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContent(searchBar.text!)
        
        tableView.reloadData()
    }
}
