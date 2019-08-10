//
//  UINavigationBar+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UINavigationBar {
  
  // MARK: - Responding to Navigation Bar Changes
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UINavigationBarDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: Pushing and Popping Items
  
  @discardableResult
  func item(_ item: UINavigationItem, animated: Bool = false) -> Builder {
    base.pushItem(item, animated: animated)
    return self
  }
  
  @discardableResult
  func items(_ items: [UINavigationItem]?, animated: Bool = false) -> Builder {
    base.setItems(items, animated: animated)
    return self
  }
  
  // MARK: - Customizing the Title's Appearance
  
  @discardableResult
  func textAttributes(_ attributes: NavigationBarBuilder.TextAttributes) -> Builder {
    switch attributes {
    case let .each(title, largeTitle):
      base.titleTextAttributes = title
      base.largeTitleTextAttributes = largeTitle
    case let .title(value):
      base.titleTextAttributes = value
    case let .largeTitle(value):
      base.largeTitleTextAttributes = value
    }
    return self
  }
  
  @discardableResult
  func prefersLargeTitles(_ flag: Bool) -> Builder {
    base.prefersLargeTitles = flag
    return self
  }
  
  @discardableResult
  func titleVerticalPositionAdjustment(_ value: CGFloat, for barMetrics: UIBarMetrics) -> Builder {
    base.setTitleVerticalPositionAdjustment(value, for: barMetrics)
    return self
  }
  
  // MARK: - Customizing the Bar Appearance
  
//  @discardableResult
//  func backIndicatorImage(_ image: NavigationBarBackIndicatorImage) -> Builder {
//    
//  }
}

#endif
