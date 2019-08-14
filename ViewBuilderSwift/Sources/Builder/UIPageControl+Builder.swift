//
//  UIPageControl+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIPageControl {
  
  // MARK: - Helper
  
  /// Helper of `valueChanged` event of target-action pattern.
  @discardableResult
  func valueChanged(_ target: Any?, selector: Selector) -> Builder {
    base.addTarget(target, action: selector, for: .valueChanged)
    return self
  }
  
  /// Helper associated with **indicator color** setting feature.
  ///
  /// - `page` case for `pageIndicatorTintColor` property setter.
  /// - `currentPage` case for `currentPageIndicatorTintColor` property setter.
  @discardableResult
  func indicatorColor(_ indicatorColor: PageControlBuilder.IndicatorColor) -> Builder {
    switch indicatorColor {
    case let .each(page, currentPage):
      base.pageIndicatorTintColor = page
      base.currentPageIndicatorTintColor = currentPage
    case let .page(page):
      base.pageIndicatorTintColor = page
    case let .currentPage(currentPage):
      base.currentPageIndicatorTintColor = currentPage
    }
    return self
  }
 
  // MARK: - Managing the Page Navigation
  
  /// Wrapper of `currentPage` property setter.
  @discardableResult
  func currentPage(_ page: Int) -> Builder {
    base.currentPage = page
    return self
  }
  
  /// Wrapper of `numberOfPages` property setter.
  @discardableResult
  func numberOfPages(_ pages: Int) -> Builder {
    base.numberOfPages = pages
    return self
  }
  
  /// Wrapper of `hidesForSinglePage` property setter.
  @discardableResult
  func hidesForSinglePage(_ flag: Bool) -> Builder {
    base.hidesForSinglePage = flag
    return self
  }
  
  // MARK: - Updating the Page Display
  
  /// Wrapper of `pageIndicatorTintColor` property setter.
  @discardableResult
  func pageIndicatorTintColor(_ color: UIColor?) -> Builder {
    base.pageIndicatorTintColor = color
    return self
  }
  
  /// Wrapper of `currentPageIndicatorTintColor` property setter.
  @discardableResult
  func currentPageIndicatorTintColor(_ color: UIColor?) -> Builder {
    base.currentPageIndicatorTintColor = color
    return self
  }
  
  /// Wrapper of `defersCurrentPageDisplay` property setter.
  @discardableResult
  func defersCurrentPageDisplay(_ flag: Bool) -> Builder {
    base.defersCurrentPageDisplay = flag
    return self
  }
}

#endif
