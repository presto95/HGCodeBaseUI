//
//  UIPageControlBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UIPageControl {
  
  @discardableResult
  func builder() -> UIPageControlBuilder {
    return .init(pageControl: self)
  }
}

public final class UIPageControlBuilder {
  
  private let pageControl: UIPageControl
  
  init() {
    pageControl = .init()
  }
  
  init(pageControl: UIPageControl) {
    self.pageControl = pageControl
  }
  
  // MARK: - Managing the Page Navigation
  
  @discardableResult
  func currentPage(_ page: Int) -> UIPageControlBuilder {
    pageControl.currentPage = page
    return self
  }
  
  @discardableResult
  func numberOfPages(_ pages: Int) -> UIPageControlBuilder {
    pageControl.numberOfPages = pages
    return self
  }
  
  @discardableResult
  func hidesForSinglePage(_ flag: Bool) -> UIPageControlBuilder {
    pageControl.hidesForSinglePage = flag
    return self
  }
  
  // MARK: - Updating the Page Display
  
  @discardableResult
  func tintColor(_ pageControlIndicator: PageControlIndicator) -> UIPageControlBuilder {
    switch pageControlIndicator {
    case let .each(page, currentPage):
      pageControl.pageIndicatorTintColor = page
      pageControl.currentPageIndicatorTintColor = currentPage
    case let .page(color):
      pageControl.pageIndicatorTintColor = color
    case let .currentPage(color):
      pageControl.currentPageIndicatorTintColor = color
    }
    return self
  }
  
  @discardableResult
  func defersCurrentPageDisplay(_ flag: Bool) -> UIPageControlBuilder {
    pageControl.defersCurrentPageDisplay = flag
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIPageControl {
    return pageControl
  }
}
