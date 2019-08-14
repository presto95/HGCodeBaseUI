//
//  UILabel+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UILabel {
  
  // MARK: - Helper
  
  /// Helper associated with **text & text style** setting feature.
  ///
  /// - `plain` case for `text` property setter.
  /// - `attributed` case for `attributedText` property setter.
  @discardableResult
  func text(_ text: Text, style: TextStyle? = nil) -> Builder {
    switch text {
    case let .plain(text):
      base.text = text
    case let .attributed(text, attributes):
      base.attributedText = .init(string: text, attributes: attributes)
    }
    if let style = style {
      self.textStyle(style)
    }
    return self
  }
  
  /// Helper associated with **text style** setting feature.
  ///
  /// - `color` case for `textColor` property setter.
  /// - `font` case for `font` property setter.
  /// - `alignment` case for `textAlignment` property setter.
  @discardableResult
  func textStyle(_ textStyle: TextStyle) -> Builder {
    switch textStyle {
    case let .each(color, font, alignment):
      base.textColor = color
      base.font = font
      base.textAlignment = alignment
    case let .color(color):
      base.textColor = color
    case let .font(font):
      base.font = font
    case let .alignment(alignment):
      base.textAlignment = alignment
    }
    return self
  }
  
  /// Helper associated with **shadow** setting feature.
  ///
  /// - `color` case for `shadowColor` property setter.
  /// - `offset` case for `shadowOffset` property setter.
  func shadow(_ shadow: LabelBuilder.Shadow<Int>) -> Builder {
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
  
  /// Helper associated with **shadow** setting feature.
  ///
  /// - `color` case for `shadowColor` property setter.
  /// - `offset` case for `shadowOffset` property setter.
  func shadow(_ shadow: LabelBuilder.Shadow<Double>) -> Builder {
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
  
  /// Helper associated with **shadow** setting feature.
  ///
  /// - `color` case for `shadowColor` property setter.
  /// - `offset` case for `shadowOffset` property setter.
  func shadow(_ shadow: LabelBuilder.Shadow<CGFloat>) -> Builder {
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
  
  // MARK: - Accessing the Text Attributes
  
  /// Wrapper of `text` property setter.
  @discardableResult
  func text(_ text: String?) -> Builder {
    base.text = text
    return self
  }
  
  /// Wrapper of `attributedText` property setter.
  @discardableResult
  func attributedText(_ text: NSAttributedString?) -> Builder {
    base.attributedText = text
    return self
  }
  
  /// Wrapper of `font` property setter.
  @discardableResult
  func font(_ font: UIFont!) -> Builder {
    base.font = font
    return self
  }
  
  /// Wrapper of `textColor` property setter.
  @discardableResult
  func textColor(_ color: UIColor!) -> Builder {
    base.textColor = color
    return self
  }
  
  /// Wrapper of `textAlignment` property setter.
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Builder {
    base.textAlignment = alignment
    return self
  }
  
  /// Wrapper of `lineBreakMode` property setter.
  @discardableResult
  func lineBreakMode(_ mode: NSLineBreakMode) -> Builder {
    base.lineBreakMode = mode
    return self
  }
  
  /// Wrapper of `isEnabled` property setter.
  @discardableResult
  func isEnabled(_ flag: Bool) -> Builder {
    base.isEnabled = flag
    return self
  }
  
  // MARK: - Sizing the Label's Text
  
  /// Wrapper of `adjustsFontSizeToFitWidth` property setter.
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> Builder {
    base.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  /// Wrapper of `allowsDefaultTighteningForTruncation` property setter.
  @discardableResult
  func allowsDefaultTighteningForTruncation(_ flag: Bool) -> Builder {
    base.allowsDefaultTighteningForTruncation = flag
    return self
  }
  
  /// Wrapper of `baselineAdjustment` property setter.
  @discardableResult
  func baselineAdjustment(_ adjustment: UIBaselineAdjustment) -> Builder {
    base.baselineAdjustment = adjustment
    return self
  }
  
  /// Wrapper of `minimumScaleFactor` property setter.
  @discardableResult
  func minimumScaleFactor(_ factor: CGFloat) -> Builder {
    base.minimumScaleFactor = factor
    return self
  }
  
  /// Wrapper of `numberOfLines` property setter.
  @discardableResult
  func numberOfLines(_ lines: Int) -> Builder {
    base.numberOfLines = lines
    return self
  }
  
  // MARK: - Managing Highlight Values
  
  /// Wrapper of `highlightedTextColor` property setter.
  @discardableResult
  func highlightedTextColor(_ color: UIColor?) -> Builder {
    base.highlightedTextColor = color
    return self
  }
  
  /// Wrapper of `isHighlighted` property setter.
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
  
  // MARK: - Drawing a Shadow
  
  /// Wrapper of `shadowColor` property setter.
  @discardableResult
  func shadowColor(_ color: UIColor?) -> Builder {
    base.shadowColor = color
    return self
  }
  
  /// Wrapper of `shadowOffset` property setter.
  @discardableResult
  func shadowOffset(_ offset: CGSize) -> Builder {
    base.shadowOffset = offset
    return self
  }

  // MARK: - Getting the Layout Constraints
  
  /// Wrapper of `preferredMaxLayoutWidth` property setter.
  @discardableResult
  func preferredMaxLayoutWidth(_ width: CGFloat) -> Builder {
    base.preferredMaxLayoutWidth = width
    return self
  }
  
  /// Wrapper of `isUserInteractionEnabled` property setter.
  @discardableResult
  func isUserInteractionEnabled(_ flag: Bool) -> Builder {
    base.isUserInteractionEnabled = flag
    return self
  }
}

#endif
