//
//  SearchBarPositionAdjustment.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum SearchBarPositionAdjustment {
  
  case each(icon: (UIOffset, icon: UISearchBar.Icon),
            searchFieldBackground: UIOffset,
            searchText: UIOffset)
  
  case icon(UIOffset, icon: UISearchBar.Icon)
  
  case searchFieldBackground(UIOffset)
  
  case searchText(UIOffset)
}

#endif
