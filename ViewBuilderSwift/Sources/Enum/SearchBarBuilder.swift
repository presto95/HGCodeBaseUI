//
//  SearchBarBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum SearchBarBuilder {
 
  public enum Style {
    
    case each(bar: UIBarStyle, searchBar: UISearchBar.Style)
    
    case bar(UIBarStyle)
    
    case searchBar(UISearchBar.Style)
  }
  
  public enum Color {
    
    case each(bar: UIColor?, searchBar: UIColor?)
    
    case bar(UIColor?)
    
    case searchBar(UIColor?)
  }

  public enum ButtonVisibility {
    
    case each(bookmark: Bool, cancel: Bool, searchResults: Bool)
    
    case bookmark(Bool)
    
    case cancel(Bool)
    
    case searchResults(Bool)
  }
  
  public enum ScopeBarButton {
    
    case each(buttonTitles: [String]?, selectedButtonIndex: Int, showsBar: Bool)
    
    case buttonTitles([String]?)
    
    case selectedButtonIndex(Int)
    
    case showsBar(Bool)
  }
  
  public enum Image {
    
    case each(icon: (UIImage?, icon: UISearchBar.Icon, state: UIControl.State),
      background: (UIImage?, barPosition: UIBarPosition, barMetrics: UIBarMetrics),
      scopeBarBackground: (UIImage?, state: UIControl.State),
      scopeBarButtonDivider: (UIImage?,
        leftSegmentState: UIControl.State,
        rightSegmentState: UIControl.State),
      searchFieldBackground: (UIImage?, state: UIControl.State))
    
    case icon(UIImage?, icon: UISearchBar.Icon, state: UIControl.State)
    
    case background(UIImage?, barPosition: UIBarPosition, barMetrics: UIBarMetrics)
    
    case scopeBarButtonBackground(UIImage?, state: UIControl.State)
    
    case scopeBarButtonDivider(UIImage?,
      leftSegmentState: UIControl.State,
      rightSegmentState: UIControl.State)
    
    case searchFieldBackground(UIImage?, state: UIControl.State)
  }
  
  public enum PositionAdjustment {
    
    case each(icon: (UIOffset, icon: UISearchBar.Icon),
      searchFieldBackground: UIOffset,
      searchText: UIOffset)
    
    case icon(UIOffset, icon: UISearchBar.Icon)
    
    case searchFieldBackground(UIOffset)
    
    case searchText(UIOffset)
  }
}

#endif
