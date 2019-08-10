//
//  UILabel+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UILabel {
  
  // MARK: - Accessing the Text Attributes
  
  @discardableResult
  func text(_ text: Text) -> Builder {
    switch text {
    case let .plain(text):
      base.text = text
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text, attributes: attributes)
      base.attributedText = attributedString
    }
    return self
  }
  
  @discardableResult
  func font(_ font: UIFont!) -> Builder {
    base.font = font
    return self
  }
  
  @discardableResult
  func textColor(_ color: UIColor!) -> Builder {
    base.textColor = color
    return self
  }
  
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Builder {
    base.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func lineBreakMode(_ mode: NSLineBreakMode) -> Builder {
    base.lineBreakMode = mode
    return self
  }
  
  @discardableResult
  func isEnabled(_ flag: Bool) -> Builder {
    base.isEnabled = flag
    return self
  }
  
  // MARK: - Sizing the Label's Text
  
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> Builder {
    base.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  @discardableResult
  func allowsDefaultTighteningForTruncation(_ flag: Bool) -> Builder {
    base.allowsDefaultTighteningForTruncation = flag
    return self
  }
  
  @discardableResult
  func baselineAdjustment(_ adjustment: UIBaselineAdjustment) -> Builder {
    base.baselineAdjustment = adjustment
    return self
  }
  
  @discardableResult
  func minimumScaleFactor(_ factor: CGFloat) -> Builder {
    base.minimumScaleFactor = factor
    return self
  }
  
  @discardableResult
  func numberOfLines(_ lines: Int) -> Builder {
    base.numberOfLines = lines
    return self
  }
  
  // MARK: - Managing Highlight Values
  
  @discardableResult
  func highlightedTextColor(_ color: UIColor?) -> Builder {
    base.highlightedTextColor = color
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
  
  func shadow(_ shadow: Shadow<Int>) -> Builder {
    switch shadow {
    case let .each(color, offset):
      base.shadowColor = color
      switch offset {
      case let .all(value):
        base.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        base.shadowOffset = .init(width: x, height: y)
      case .zero:
        base.shadowOffset = .zero
      }
    case let .color(color):
      base.shadowColor = color
    case let .offset(offset):
      switch offset {
      case let .all(value):
        base.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        base.shadowOffset = .init(width: x, height: y)
      case .zero:
        base.shadowOffset = .zero
      }
    }
    return self
  }
  
  func shadow(_ shadow: Shadow<Double>) -> Builder {
    switch shadow {
    case let .each(color, offset):
      base.shadowColor = color
      switch offset {
      case let .all(value):
        base.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        base.shadowOffset = .init(width: x, height: y)
      case .zero:
        base.shadowOffset = .zero
      }
    case let .color(color):
      base.shadowColor = color
    case let .offset(offset):
      switch offset {
      case let .all(value):
        base.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        base.shadowOffset = .init(width: x, height: y)
      case .zero:
        base.shadowOffset = .zero
      }
    }
    return self
  }
  
  func shadow(_ shadow: Shadow<CGFloat>) -> Builder {
    switch shadow {
    case let .each(color, offset):
      base.shadowColor = color
      switch offset {
      case let .all(value):
        base.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        base.shadowOffset = .init(width: x, height: y)
      case .zero:
        base.shadowOffset = .zero
      }
    case let .color(color):
      base.shadowColor = color
    case let .offset(offset):
      switch offset {
      case let .all(value):
        base.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        base.shadowOffset = .init(width: x, height: y)
      case .zero:
        base.shadowOffset = .zero
      }
    }
    return self
  }
  
  // MARK: - Getting the Layout Constraints
  
  @discardableResult
  func preferredMaxLayoutWidth(_ width: CGFloat) -> Builder {
    base.preferredMaxLayoutWidth = width
    return self
  }
}

#endif
