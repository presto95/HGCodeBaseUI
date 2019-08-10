//
//  SearchBarStyle.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum SearchBarStyle {
  
  case each(bar: UIBarStyle, searchBar: UISearchBar.Style)
  
  case bar(UIBarStyle)
  
  case searchBar(UISearchBar.Style)
}

#endif
