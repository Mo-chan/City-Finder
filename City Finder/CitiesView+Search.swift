//
//  CitiesView+Search.swift
//  City Finder
//
//  Created by Awwad on 8/3/19.
//  Copyright © 2019 awwad. All rights reserved.
//

import Foundation
import UIKit

extension CitiesViewController: UISearchResultsUpdating {

  func updateSearchResults(for searchController: UISearchController) {
    if let text = searchController.searchBar.text {
      viewModel.filterContentForSearchText(text, completion: {})
      isFiltering()
    }
  }

}
