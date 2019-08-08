//
//  UILabelBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal final class UILabelBuilder {
  
  private let label: UILabel
  
  init() {
    label = .init()
  }
  
  // MARK: - Accessing the Text Attributes
  
  @discardableResult
  func text(_ text: Text) -> UILabelBuilder {
    switch text {
    case let .plain(text):
      label.text = text
    case let .attributed(text, attributes):
      let attributedString = NSAttributedString(string: text, attributes: attributes)
      label.attributedText = attributedString
    }
    return self
  }
  
  @discardableResult
  func font(_ font: UIFont!) -> UILabelBuilder {
    label.font = font
    return self
  }
  
  @discardableResult
  func textColor(_ color: UIColor!) -> UILabelBuilder {
    label.textColor = color
    return self
  }
  
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> UILabelBuilder {
    label.textAlignment = alignment
    return self
  }
  
  @discardableResult
  func lineBreakMode(_ mode: NSLineBreakMode) -> UILabelBuilder {
    label.lineBreakMode = mode
    return self
  }
  
  @discardableResult
  func isEnabled(_ flag: Bool) -> UILabelBuilder {
    label.isEnabled = flag
    return self
  }
  
  // MARK: - Sizing the Label's Text
  
  @discardableResult
  func adjustsFontSizeToFitWidth(_ flag: Bool) -> UILabelBuilder {
    label.adjustsFontSizeToFitWidth = flag
    return self
  }
  
  @discardableResult
  func allowsDefaultTighteningForTruncation(_ flag: Bool) -> UILabelBuilder {
    label.allowsDefaultTighteningForTruncation = flag
    return self
  }
  
  @discardableResult
  func baselineAdjustment(_ adjustment: UIBaselineAdjustment) -> UILabelBuilder {
    label.baselineAdjustment = adjustment
    return self
  }
  
  @discardableResult
  func minimumScaleFactor(_ factor: CGFloat) -> UILabelBuilder {
    label.minimumScaleFactor = factor
    return self
  }
  
  @discardableResult
  func numberOfLines(_ lines: Int) -> UILabelBuilder {
    label.numberOfLines = lines
    return self
  }
  
  // MARK: - Managing Highlight Values
  
  @discardableResult
  func highlightedTextColor(_ color: UIColor?) -> UILabelBuilder {
    label.highlightedTextColor = color
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> UILabelBuilder {
    label.isHighlighted = flag
    return self
  }
  
  func shadow(_ shadow: Shadow<Int>) -> UILabelBuilder {
    switch shadow {
    case let .each(color, offset):
      label.shadowColor = color
      switch offset {
      case let .all(value):
        label.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        label.shadowOffset = .init(width: x, height: y)
      case .zero:
        label.shadowOffset = .zero
      }
    case let .color(color):
      label.shadowColor = color
    case let .offset(offset):
      switch offset {
      case let .all(value):
        label.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        label.shadowOffset = .init(width: x, height: y)
      case .zero:
        label.shadowOffset = .zero
      }
    }
    return self
  }
  
  func shadow(_ shadow: Shadow<Double>) -> UILabelBuilder {
    switch shadow {
    case let .each(color, offset):
      label.shadowColor = color
      switch offset {
      case let .all(value):
        label.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        label.shadowOffset = .init(width: x, height: y)
      case .zero:
        label.shadowOffset = .zero
      }
    case let .color(color):
      label.shadowColor = color
    case let .offset(offset):
      switch offset {
      case let .all(value):
        label.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        label.shadowOffset = .init(width: x, height: y)
      case .zero:
        label.shadowOffset = .zero
      }
    }
    return self
  }
  
  func shadow(_ shadow: Shadow<CGFloat>) -> UILabelBuilder {
    switch shadow {
    case let .each(color, offset):
      label.shadowColor = color
      switch offset {
      case let .all(value):
        label.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        label.shadowOffset = .init(width: x, height: y)
      case .zero:
        label.shadowOffset = .zero
      }
    case let .color(color):
      label.shadowColor = color
    case let .offset(offset):
      switch offset {
      case let .all(value):
        label.shadowOffset = .init(width: value, height: value)
      case let .each(x, y):
        label.shadowOffset = .init(width: x, height: y)
      case .zero:
        label.shadowOffset = .zero
      }
    }
    return self
  }
  
  // MARK: - Getting the Layout Constraints
  
  @discardableResult
  func preferredMaxLayoutWidth(_ width: CGFloat) -> UILabelBuilder {
    label.preferredMaxLayoutWidth = width
    return self
  }
  
  // MARK: - Build
  
  func build() -> UILabel {
    return label
  }
}
