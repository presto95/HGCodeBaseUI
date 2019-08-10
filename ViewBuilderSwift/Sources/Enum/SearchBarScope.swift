//
//  SearchBarScope.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum SearchBarScope {
  
  case each(buttonTitles: [String]?, selectedButtonIndex: Int, showsBar: Bool)
  
  case buttonTitles([String]?)
  
  case selectedButtonIndex(Int)
  
  case showsBar(Bool)
}

#endif
