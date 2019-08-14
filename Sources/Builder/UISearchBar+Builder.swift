//
//  UISearchBar+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UISearchBar {
  
  // MARK: - Helper
  
  /// Helper associated with **bar style** setting feature.
  ///
  /// - `plain` case for `barStyle` property setter.
  /// - `search` case for `searchBarStyle` property setter.
  @discardableResult
  func barStyle(_ barStyle: SearchBarBuilder.BarStyle) -> Builder {
    switch barStyle {
    case let .each(plain, search):
      base.barStyle = plain
      base.searchBarStyle = search
    case let .plain(plain):
      base.barStyle = plain
    case let .search(search):
      base.searchBarStyle = search
    }
    return self
  }
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `bar` case for `barTintColor` property setter.
  /// - `searchBar` case for `tintColor` property setter.
  @discardableResult
  func color(_ color: SearchBarBuilder.Color) -> Builder {
    switch color {
    case let .each(bar, searchBar):
      base.barTintColor = bar
      base.tintColor = searchBar
    case let .bar(bar):
      base.barTintColor = bar
    case let .searchBar(searchBar):
      base.tintColor = searchBar
    }
    return self
  }
  
  /// Helper associated with **shows button** setting feature.
  ///
  /// - `bookmark` case for `showsBookmarkButton` property setter.
  /// - `cancel` case for `showsCancelButton` property setter.
  /// - `searchResults` case for `showsSearchResultsButton` property setter.
  @discardableResult
  func showsButton(_ buttonVisibility: SearchBarBuilder.Button<Bool>) -> Builder {
    switch buttonVisibility {
    case let .each(bookmark, cancel, searchResults):
      base.showsBookmarkButton = bookmark
      base.showsCancelButton = cancel
      base.showsSearchResultsButton = searchResults
    case let .bookmark(bookmark):
      base.showsBookmarkButton = bookmark
    case let .cancel(cancel):
      base.showsCancelButton = cancel
    case let .searchResults(searchResults):
      base.showsSearchResultsButton = searchResults
    }
    return self
  }
  
  /// Helper associated with **scope bar & button** setting feature.
  ///
  /// - `buttonTitles` case for `scopeButtonTitles` property setter.
  /// - `selectedButtonIndex` case for `selectedScopeButtonIndex` property setter.
  /// - `showsBar` case for `showsScopeBar` property setter.
  @discardableResult
  func scope(_ scope: SearchBarBuilder.Scope) -> Builder {
    switch scope {
    case let .each(buttonTitles, selectedButtonIndex, showsBar):
      base.scopeButtonTitles = buttonTitles
      base.selectedScopeButtonIndex = selectedButtonIndex
      base.showsScopeBar = showsBar
    case let .buttonTitles(buttonTitles):
      base.scopeButtonTitles = buttonTitles
    case let .selectedButtonIndex(selectedButtonIndex):
      base.selectedScopeButtonIndex = selectedButtonIndex
    case let .showsBar(showsBar):
      base.showsScopeBar = showsBar
    }
    return self
  }
  /// Helper associated with **image** setting feature.
  ///
  /// - `plain` case for `setImage(_:for:state:)` method.
  /// - `background` case for `setBackgroundImage(_:for:barMetrics:)` method.
  /// - `scopeBarButtonBackground` case for `setScopeBarButtonBackgroundImage(_:for:)` method.
  /// - `scopeBarButtonDivider` case for
  ///   `setScopeBarButtonDividerImage(_:forLeftSegmentState:rightSegmentState:)` method.
  /// - `searchFieldBackground` case for `setSearchFieldBackgroundImage(_:for:)` method.
  @discardableResult
  func image(_ image: SearchBarBuilder.Image) -> Builder {
    switch image {
    case let .each(plain,
                   background,
                   scopeBarButtonBackground,
                   scopeBarButtonDivider,
                   searchFieldBackground):
      base.setImage(plain.0, for: plain.icon, state: plain.state)
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
    case let .plain(image, icon, state):
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
  
  /// Helper associated with **position adjustment** setting feature.
  ///
  /// - `plain` case for `setPositionAdjustment(_:for:)` method.
  /// - `searchFieldBackground` case for `searchFieldBackgroundPositionAdjustment` property setter.
  /// - `searchText` case for `searchTextPositionAdjustment` property setter.
  @discardableResult
  func positionAdjustment(_ positionAdjustment: SearchBarBuilder.PositionAdjustment) -> Builder {
    switch positionAdjustment {
    case let .each(plain, searchFieldBackground, searchText):
      base.setPositionAdjustment(plain.0, for: plain.icon)
      base.searchFieldBackgroundPositionAdjustment = searchFieldBackground
      base.searchTextPositionAdjustment = searchText
    case let .plain(plain, icon):
      base.setPositionAdjustment(plain, for: icon)
    case let .searchFieldBackground(searchFieldBackground):
      base.searchFieldBackgroundPositionAdjustment = searchFieldBackground
    case let .searchText(searchText):
      base.searchTextPositionAdjustment = searchText
    }
    return self
  }

  // MARK: - Handling Search Bar Interactions
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UISearchBarDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Text Content
  
  /// Wrapper of `placeholder` property setter.
  @discardableResult
  func placeholder(_ placeholder: String?) -> Builder {
    base.placeholder = placeholder
    return self
  }
  
  /// Wrapper of `prompt` property setter.
  @discardableResult
  func prompt(_ prompt: String?) -> Builder {
    base.prompt = prompt
    return self
  }
  
  /// Wrapper of `text` property setter.
  @discardableResult
  func text(_ text: String?) -> Builder {
    base.text = text
    return self
  }
  
  // MARK: - Display Attributes
  
  /// Wrapper of `barStyle` property setter.
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Builder {
    base.barStyle = style
    return self
  }
  
  /// Wrapper of `barTintColor` property setter.
  @discardableResult
  func barTintColor(_ color: UIColor?) -> Builder {
    base.barTintColor = color
    return self
  }
  
  /// Wrapper of `searchBarStyle` property setter.
  @discardableResult
  func searchBarStyle(_ style: UISearchBar.Style) -> Builder {
    base.searchBarStyle = style
    return self
  }
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  /// Wrapper of `isTranslucent` property setter.
  @discardableResult
  func isTranslucent(_ flag: Bool) -> Builder {
    base.isTranslucent = flag
    return self
  }

  // MARK: - Button Configuration
  
  /// Wrapper of `showsBookmarkButton` property setter.
  @discardableResult
  func showsBookmarkButton(_ flag: Bool) -> Builder {
    base.showsBookmarkButton = flag
    return self
  }
  
  /// Wrapper of `showsCancelButton` property setter.
  @discardableResult
  func showsCancelButton(_ flag: Bool) -> Builder {
    base.showsCancelButton = flag
    return self
  }
  
  /// Wrapper of `setShowsCancelButton(_:animated:)` method.
  @discardableResult
  func showsCancelButton(_ flag: Bool, animated: Bool) -> Builder {
    base.setShowsCancelButton(flag, animated: animated)
    return self
  }
  
  /// Wrapper of `showsSearchResultsButton` property setter.
  @discardableResult
  func showsSearchResultButton(_ flag: Bool) -> Builder {
    base.showsSearchResultsButton = flag
    return self
  }
  
  /// Wrapper of `isSearchResultsButtonSelected` property setter.
  @discardableResult
  func isSearchResultsButtonSelected(_ flag: Bool) -> Builder {
    base.isSearchResultsButtonSelected = flag
    return self
  }
  
  // MARK: - Scope Buttons
  
  /// Wrapper of `scopeButtonTitles` propery setter.
  @discardableResult
  func scopeButtonTitles(_ titles: [String]?) -> Builder {
    base.scopeButtonTitles = titles
    return self
  }
  
  /// Wrapper of `selectedScopeButtonIndex` property setter.
  @discardableResult
  func selectedScopeButtonIndex(_ index: Int) -> Builder {
    base.selectedScopeButtonIndex = index
    return self
  }
  
  /// Wrapper of `showsScopeBar` property setter.
  @discardableResult
  func showsScopeBar(_ flag: Bool) -> Builder {
    base.showsScopeBar = flag
    return self
  }
  
  // MARK: - Customizing Appearance
  
  /// Wrapper of `backgroundImage` property setter.
  @discardableResult
  func backgroundImage(_ image: UIImage?) -> Builder {
    base.backgroundImage = image
    return self
  }
  
  /// Wrapper of `setBackgroundImage(_:for:barMetrics:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for barPosition: UIBarPosition,
                       barMetrics: UIBarMetrics) -> Builder {
    base.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
    return self
  }
  
  /// Wrapper of `setImage(_:for:state:)` method.
  @discardableResult
  func image(_ image: UIImage?, for icon: UISearchBar.Icon, state: UIControl.State) -> Builder {
    base.setImage(image, for: icon, state: state)
    return self
  }
  
  /// Wrapper of `setPositionAdjustment(_:for:)` method.
  @discardableResult
  func positionAdjustment(_ adjustment: UIOffset, for icon: UISearchBar.Icon) -> Builder {
    base.setPositionAdjustment(adjustment, for: icon)
    return self
  }
  
  /// Wrapper of `inputAccessoryView` property setter.
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Builder {
    base.inputAccessoryView = view
    return self
  }
  
  /// Wrapper of `scopeBarBackgroundImage` property setter.
  @discardableResult
  func scopeBarBackgroundImage(_ image: UIImage?) -> Builder {
    base.scopeBarBackgroundImage = image
    return self
  }
  
  /// Wrapper of `setScopeBarButtonBackgroundImage(_:for:)` method.
  @discardableResult
  func scopeBarButtonBackgroundImage(_ image: UIImage, for state: UIControl.State) -> Builder {
    base.setScopeBarButtonBackgroundImage(image, for: state)
    return self
  }
  
  /// Wrapper of `setScopeBarButtonDividerImage(_:forLeftSegmentState:rightSegmentState:)` method.
  @discardableResult
  func scopeBarButtonDividerImage(_ image: UIImage?,
                                  forLeftSegmentState leftSegmentState: UIControl.State,
                                  rightSegmentState: UIControl.State) -> Builder {
    base.setScopeBarButtonDividerImage(image,
                                       forLeftSegmentState: leftSegmentState,
                                       rightSegmentState: rightSegmentState)
    return self
  }
  
  /// Wrapper of `setScopeBarButtonTitleTextAttributes(_:for:)` method.
  @discardableResult
  func scopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?,
                                         for state: UIControl.State) -> Builder {
    base.setScopeBarButtonTitleTextAttributes(attributes, for: state)
    return self
  }
  
  /// Wrapper of `setSearchFieldBackgroundImage(_:for:)` method.
  @discardableResult
  func searchFieldBackgroundImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setSearchFieldBackgroundImage(image, for: state)
    return self
  }
  
  /// Wrapper of `searchFieldBackgroundPositionAdjustment` property setter.
  @discardableResult
  func searchFieldBackgroundPositionAdjustment(_ adjustment: UIOffset) -> Builder {
    base.searchFieldBackgroundPositionAdjustment = adjustment
    return self
  }
  
  /// Wrapper of `searchTextPositionAdjustment` property setter.
  @discardableResult
  func searchTextPositionAdjustment(_ adjustment: UIOffset) -> Builder {
    base.searchTextPositionAdjustment = adjustment
    return self
  }
}

#endif
