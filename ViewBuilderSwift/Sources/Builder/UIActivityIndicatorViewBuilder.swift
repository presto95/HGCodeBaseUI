//
//  UIActivityIndicatorViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UIActivityIndicatorView {
  
  func builder() -> UIActivityIndicatorViewBuilder {
    return .init(activityIndicatorView: self)
  }
}

public final class UIActivityIndicatorViewBuilder {
  
  private let activityIndicatorView: UIActivityIndicatorView
  
  init() {
    activityIndicatorView = .init()
  }
  
  init(activityIndicatorView: UIActivityIndicatorView) {
    self.activityIndicatorView = activityIndicatorView
  }
  
  // MARK: - Managing an Activity Indicator
  
  @discardableResult
  func hidesWhenStopped(_ flag: Bool) -> UIActivityIndicatorViewBuilder {
    activityIndicatorView.hidesWhenStopped = flag
    return self
  }
  
  // MARK: - Configuring the Activity Indicator Appearance
  
  @discardableResult
  func style(_ style: UIActivityIndicatorView.Style) -> UIActivityIndicatorViewBuilder {
    activityIndicatorView.style = style
    return self
  }
  
  @discardableResult
  func color(_ color: UIColor!) -> UIActivityIndicatorViewBuilder {
    activityIndicatorView.color = color
    return self
  }
  
  // MARK: - Build
  
  @discardableResult
  func build() -> UIActivityIndicatorView {
    return activityIndicatorView
  }
}
