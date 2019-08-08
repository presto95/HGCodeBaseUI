//
//  UIButton+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UIButton {
  
  // MARK: - Configuring the Button Title
  
  @discardableResult
  func title(_ title: String?,
             for state: UIControl.State = .normal,
             withAttributes attributes: [NSAttributedString.Key: Any]? = nil) -> Self {
    if let attributes = attributes {
      let attributedString = NSAttributedString(string: title ?? "", attributes: attributes)
      self.setAttributedTitle(attributedString, for: state)
    } else {
      self.setTitle(title, for: state)
    }
    return self
  }
  
  @discardableResult
  func titleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
    self.setTitleColor(color, for: state)
    return self
  }
  
  @discardableResult
  func titleShadowColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
    self.setTitleShadowColor(color, for: state)
    return self
  }
  
  @discardableResult
  func reversesTitleShadowWhenHighlighted(_ flag: Bool) -> Self {
    self.reversesTitleShadowWhenHighlighted = flag
    return self
  }
  
  // MARK: - Configurint Button Presentation
  
  @discardableResult
  func adjustsImageWhenHighlighted(_ flag: Bool) -> Self {
    self.adjustsImageWhenHighlighted = flag
    return self
  }
  
  @discardableResult
  func adjustsImageWhenDisabled(_ flag: Bool) -> Self {
    self.adjustsImageWhenDisabled = flag
    return self
  }
  
  @discardableResult
  func showsTouchWhenHighlighted(_ flag: Bool) -> Self {
    self.showsTouchWhenHighlighted = flag
    return self
  }
  
  @discardableResult
  func backgroundImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
    self.setBackgroundImage(image, for: state)
    return self
  }
  
  @discardableResult
  func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
    self.setImage(image, for: state)
    return self
  }
  
  // MARK: - Configuring Edge Insets
  
  @discardableResult
  func contentEdgeInsets(_ edgeInsets: EdgeInsets) -> Self {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      self.contentEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      self.contentEdgeInsets = .init(top: vertical,
                                     left: horizontal,
                                     bottom: vertical,
                                     right: horizontal)
    case let .all(value):
      self.contentEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case .zero:
      self.contentEdgeInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func titleEdgeInsets(_ edgeInsets: EdgeInsets) -> Self {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      self.titleEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      self.titleEdgeInsets = .init(top: vertical,
                                   left: horizontal,
                                   bottom: vertical,
                                   right: horizontal)
    case let .all(value):
      self.titleEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case .zero:
      self.titleEdgeInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func imageEdgeInsets(_ edgeInsets: EdgeInsets) -> Self {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      self.imageEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      self.imageEdgeInsets = .init(top: vertical,
                                   left: horizontal,
                                   bottom: vertical,
                                   right: horizontal)
    case let .all(value):
      self.imageEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case .zero:
      self.imageEdgeInsets = .zero
    }
    return self
  }
}
