//
//  SearchBarButtonVisibility.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum SearchBarButtonVisibility {
  
  case each(bookmark: Bool, cancel: Bool, searchResults: Bool)
  
  case bookmark(Bool)
  
  case cancel(Bool)
  
  case searchResults(Bool)
}

#endif
