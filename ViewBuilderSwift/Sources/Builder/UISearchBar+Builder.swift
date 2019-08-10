//
//  UISearchBar+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UISearchBar {
  
  // MARK: - Handling Search Bar Interactions
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UISearchBarDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Text Content
  
  @discardableResult
  func placeholder(_ placeholder: String?) -> Builder {
    base.placeholder = placeholder
    return self
  }
  
  @discardableResult
  func prompt(_ prompt: String?) -> Builder {
    base.prompt = prompt
    return self
  }
  
  @discardableResult
  func text(_ text: String?) -> Builder {
    base.text = text
    return self
  }
  
  // MARK: - Display Attributes
  
  @discardableResult
  func style(_ style: SearchBarStyle) -> Builder {
    switch style {
    case let .each(bar, searchBar):
      base.barStyle = bar
      base.searchBarStyle = searchBar
    case let .bar(style):
      base.barStyle = style
    case let .searchBar(style):
      base.searchBarStyle = style
    }
    return self
  }
  
  @discardableResult
  func tintColor(_ color: SearchBarColor) -> Builder {
    switch color {
    case let .each(bar, searchBar):
      base.barTintColor = bar
      base.tintColor = searchBar
    case let .bar(color):
      base.barTintColor = color
    case let .searchBar(color):
      base.tintColor = color
    }
    return self
  }
  
  @discardableResult
  func isTranslucent(_ flag: Bool) -> Builder {
    base.isTranslucent = flag
    return self
  }

  // MARK: - Button Configuration
  
  @discardableResult
  func showsButton(_ buttonVisibility: SearchBarButtonVisibility) -> Builder {
    switch buttonVisibility {
    case let .each(bookmark, cancel, searchResults):
      base.showsBookmarkButton = bookmark
      base.showsCancelButton = cancel
      base.showsSearchResultsButton = searchResults
    case let .bookmark(value):
      base.showsBookmarkButton = value
    case let .cancel(value):
      base.showsCancelButton = value
    case let .searchResults(value):
      base.showsSearchResultsButton = value
    }
    return self
  }
  
  @discardableResult
  func isSearchResultsButtonSelected(_ flag: Bool) -> Builder {
    base.isSearchResultsButtonSelected = flag
    return self
  }
  
  // MARK: - Scope Buttons
  
  @discardableResult
  func scope(_ scope: SearchBarScope) -> Builder {
    switch scope {
    case let .each(buttonTitles, selectedButtonIndex, showsBar):
      base.scopeButtonTitles = buttonTitles
      base.selectedScopeButtonIndex = selectedButtonIndex
      base.showsScopeBar = showsBar
    case let .buttonTitles(titles):
      base.scopeButtonTitles = titles
    case let .selectedButtonIndex(index):
      base.selectedScopeButtonIndex = index
    case let .showsBar(value):
      base.showsScopeBar = value
    }
    return self
  }
  
  // MARK: - Customizing Appearance
  
  @discardableResult
  func image(_ image: SearchBarImage) -> Builder {
    switch image {
    case let .each(icon,
                   background,
                   scopeBarButtonBackground,
                   scopeBarButtonDivider,
                   searchFieldBackground):
      base.setImage(icon.0, for: icon.icon, state: icon.state)
      base.setBackgroundImage(background.0,
                              for: background.barPosition,
                              barMetrics: background.barMetrics)
      base.setScopeBarButtonBackgroundImage(scopeBarButtonBackground.0,
                                            for: scopeBarButtonBackground.state)
      base
        .setScopeBarButtonDividerImage(scopeBarButtonDivider.0,
                                       forLeftSegmentState: scopeBarButtonDivider.leftSegmentState,
                                       rightSegmentState: scopeBarButtonDivider.rightSegmentState)
      base.setSearchFieldBackgroundImage(searchFieldBackground.0, for: searchFieldBackground.state)
    case let .icon(image, icon, state):
      base.setImage(image, for: icon, state: state)
    case let .background(image, barPosition, barMetrics):
      base.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
    case let .scopeBarButtonBackground(image, state):
      base.setScopeBarButtonBackgroundImage(image, for: state)
    case let .scopeBarButtonDivider(image, leftSegmentState, rightSegmentState):
      base.setScopeBarButtonDividerImage(image,
                                         forLeftSegmentState: leftSegmentState,
                                         rightSegmentState: rightSegmentState)
    case let .searchFieldBackground(image, state):
      base.setSearchFieldBackgroundImage(image, for: state)
    }
    return self
  }
  
  @discardableResult
  func positionAdjustment(_ positionAdjustment: SearchBarPositionAdjustment) -> Builder {
    switch positionAdjustment {
    case let .each(icon, searchFieldBackground, searchText):
      base.setPositionAdjustment(icon.0, for: icon.icon)
      base.searchFieldBackgroundPositionAdjustment = searchFieldBackground
      base.searchTextPositionAdjustment = searchText
    case let .icon(offset, icon):
      base.setPositionAdjustment(offset, for: icon)
    case let .searchFieldBackground(offset):
      base.searchFieldBackgroundPositionAdjustment = offset
    case let .searchText(offset):
      base.searchTextPositionAdjustment = offset
    }
    return self
  }
  
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Builder {
    base.inputAccessoryView = view
    return self
  }
  
  @discardableResult
  func scopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?,
                                         for state: UIControl.State) -> Builder {
    base.setScopeBarButtonTitleTextAttributes(attributes, for: state)
    return self
  }
}

#endif
