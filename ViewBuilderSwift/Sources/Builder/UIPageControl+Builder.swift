//
//  UIPageControl+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIPageControl {
 
  // MARK: - Managing the Page Navigation
  
  @discardableResult
  func currentPage(_ page: Int) -> Builder {
    base.currentPage = page
    return self
  }
  
  @discardableResult
  func numberOfPages(_ pages: Int) -> Builder {
    base.numberOfPages = pages
    return self
  }
  
  @discardableResult
  func hidesForSinglePage(_ flag: Bool) -> Builder {
    base.hidesForSinglePage = flag
    return self
  }
  
  // MARK: - Updating the Page Display
  
  @discardableResult
  func tintColor(_ pageControlIndicator: PageControlIndicator) -> Builder {
    switch pageControlIndicator {
    case let .each(page, currentPage):
      base.pageIndicatorTintColor = page
      base.currentPageIndicatorTintColor = currentPage
    case let .page(color):
      base.pageIndicatorTintColor = color
    case let .currentPage(color):
      base.currentPageIndicatorTintColor = color
    }
    return self
  }
  
  @discardableResult
  func defersCurrentPageDisplay(_ flag: Bool) -> Builder {
    base.defersCurrentPageDisplay = flag
    return self
  }
}

#endif
