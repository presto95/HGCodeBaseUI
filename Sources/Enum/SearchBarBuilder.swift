//
//  SearchBarBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum SearchBarBuilder {
 
  public enum BarStyle {
    
    case each(plain: UIBarStyle, search: UISearchBar.Style)
    
    case plain(UIBarStyle)
    
    case search(UISearchBar.Style)
  }
  
  public enum Color {
    
    case each(bar: UIColor?, searchBar: UIColor?)
    
    case bar(UIColor?)
    
    case searchBar(UIColor?)
  }

  public enum Button<T> {
    
    case each(bookmark: T, cancel: T, searchResults: T)
    
    case bookmark(T)
    
    case cancel(T)
    
    case searchResults(T)
  }
  
  public enum Scope {
    
    case each(buttonTitles: [String]?, selectedButtonIndex: Int, showsBar: Bool)
    
    case buttonTitles([String]?)
    
    case selectedButtonIndex(Int)
    
    case showsBar(Bool)
  }
  
  public enum Image {
    
    case each(plain: (UIImage?, icon: UISearchBar.Icon, state: UIControl.State),
              background: (UIImage?, barPosition: UIBarPosition, barMetrics: UIBarMetrics),
              scopeBarBackground: (UIImage?, state: UIControl.State),
              scopeBarButtonDivider: (UIImage?,
                                      leftSegmentState: UIControl.State,
                                      rightSegmentState: UIControl.State),
                                      searchFieldBackground: (UIImage?, state: UIControl.State))
    
    case plain(UIImage?, icon: UISearchBar.Icon, state: UIControl.State)
    
    case background(UIImage?, barPosition: UIBarPosition, barMetrics: UIBarMetrics)
    
    case scopeBarButtonBackground(UIImage?, state: UIControl.State)
    
    case scopeBarButtonDivider(UIImage?,
                              leftSegmentState: UIControl.State,
                              rightSegmentState: UIControl.State)
    
    case searchFieldBackground(UIImage?, state: UIControl.State)
  }
  
  public enum PositionAdjustment {
    
    case each(plain: (UIOffset, icon: UISearchBar.Icon),
              searchFieldBackground: UIOffset,
              searchText: UIOffset)
    
    case plain(UIOffset, icon: UISearchBar.Icon)
    
    case searchFieldBackground(UIOffset)
    
    case searchText(UIOffset)
  }
}

#endif
