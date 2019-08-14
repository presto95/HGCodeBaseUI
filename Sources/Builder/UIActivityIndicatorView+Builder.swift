//
//  UIActivityIndicatorView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIActivityIndicatorView {
  
  // MARK: - Managing an Activity Indicator
  
  /// Wrapper of `hidesWhenStopped` property setter.
  @discardableResult
  func hidesWhenStopped(_ flag: Bool) -> Builder {
    base.hidesWhenStopped = flag
    return self
  }
  
  // MARK: - Configuring the Activity Indicator Appearance
  
  /// Wrapper of `style` property setter.
  @discardableResult
  func style(_ style: UIActivityIndicatorView.Style) -> Builder {
    base.style = style
    return self
  }
  
  /// Wrapper of `color` property setter.
  @discardableResult
  func color(_ color: UIColor!) -> Builder {
    base.color = color
    return self
  }
}

#endif
