//
//  UIActivityIndicatorView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIActivityIndicatorView {
  
  // MARK: - Managing an Activity Indicator
  
  @discardableResult
  func hidesWhenStopped(_ flag: Bool) -> Builder {
    base.hidesWhenStopped = flag
    return self
  }
  
  // MARK: - Configuring the Activity Indicator Appearance
  
  @discardableResult
  func style(_ style: UIActivityIndicatorView.Style) -> Builder {
    base.style = style
    return self
  }
  
  @discardableResult
  func color(_ color: UIColor!) -> Builder {
    base.color = color
    return self
  }
}

#endif
