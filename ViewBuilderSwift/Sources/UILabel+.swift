//
//  UILabel+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UILabel {
  
  // MARK: - Accessing the Text Attributes
  
  @discardableResult
  func text(_ text: String?,
            withAttributes attributes: [NSAttributedString.Key: Any]? = nil) -> Self {
    if let attributes = attributes {
      let attributedString = NSAttributedString(string: text ?? "", attributes: attributes)
      self.attributedText = attributedString
    } else {
      self.text = text
    }
    return self
  }
  
  @discardableResult
  func font(_ font: UIFont!) -> Self {
    self.font = font
    return self
  }
  
  @discardableResult
  func textColor(_ color: UIColor!) -> Self {
    self.textColor = color
    return self
  }
  
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Self {
    self.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func lineBreakMode(_ mode: NSLineBreakMode) -> Self {
    self.lineBreakMode = mode
    return self
  }
  
  @discardableResult
  func isEnabled(_ flag: Bool) -> Self {
    self.isEnabled = flag
    return self
  }
  
  // MARK: - Sizing the Label's Text
  
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> Self {
    self.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  @discardableResult
  func allowsDefaultTighteningForTruncation(_ flag: Bool) -> Self {
    self.allowsDefaultTighteningForTruncation = flag
    return self
  }
  
  @discardableResult
  func baselineAdjustment(_ adjustment: UIBaselineAdjustment) -> Self {
    self.baselineAdjustment = adjustment
    return self
  }
  
  @discardableResult
  func minimumScaleFactor(_ factor: CGFloat) -> Self {
    self.minimumScaleFactor = factor
    return self
  }
  
  @discardableResult
  func numberOfLines(_ lines: Int) -> Self {
    self.numberOfLines = lines
    return self
  }
  
  // MARK: - Managing Highlight Values
  
  @discardableResult
  func highlightedTextColor(_ color: UIColor?) -> Self {
    self.highlightedTextColor = color
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Self {
    self.isHighlighted = flag
    return self
  }
  
  @discardableResult
  func shadow(color: UIColor?, offset: Size<Int>) -> Self {
    self.shadowColor = color
    switch offset {
    case let .all(value):
      self.shadowOffset = .init(width: value, height: value)
    case let .each(width, height):
      self.shadowOffset = .init(width: width, height: height)
    }
    return self
  }
  
  @discardableResult
  func shadow(color: UIColor?, offset: Size<Double>) -> Self {
    self.shadowColor = color
    switch offset {
    case let .all(value):
      self.shadowOffset = .init(width: value, height: value)
    case let .each(width, height):
      self.shadowOffset = .init(width: width, height: height)
    }
    return self
  }
  
  @discardableResult
  func shadow(color: UIColor?, offset: Size<CGFloat>) -> Self {
    self.shadowColor = color
    switch offset {
    case let .all(value):
      self.shadowOffset = .init(width: value, height: value)
    case let .each(width, height):
      self.shadowOffset = .init(width: width, height: height)
    }
    return self
  }
  
  // MARK: - Getting the Layout Constraints
  
  @discardableResult
  func preferredMaxLayoutWidth(_ width: CGFloat) -> Self {
    self.preferredMaxLayoutWidth = width
    return self
  }
}
