//
//  UIButtonBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal final class UIButtonBuilder {
  
  private let button: UIButton
  
  init(type: UIButton.ButtonType) {
    button = .init(type: type)
  }
  
  // MARK: - Configuring the Button Title
  
  @discardableResult
  func title(_ title: Text, for state: UIControl.State = .normal) -> UIButtonBuilder {
    switch title {
    case let .plain(title):
      button.setTitle(title, for: state)
    case let .attributed(title, attributes):
      let attributedString = NSAttributedString(string: title, attributes: attributes)
      button.setAttributedTitle(attributedString, for: state)
    }
    return self
  }
  
  @discardableResult
  func titleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> UIButtonBuilder {
    button.setTitleColor(color, for: state)
    return self
  }
  
  @discardableResult
  func titleShadowColor(_ color: UIColor?,
                        for state: UIControl.State = .normal) -> UIButtonBuilder {
    button.setTitleShadowColor(color, for: state)
    return self
  }
  
  @discardableResult
  func reversesTitleShadowWhenHighlighted(_ flag: Bool) -> UIButtonBuilder {
    button.reversesTitleShadowWhenHighlighted = flag
    return self
  }
  
  // MARK: - Configurint Button Presentation
  
  @discardableResult
  func adjustsImageWhenHighlighted(_ flag: Bool) -> UIButtonBuilder {
    button.adjustsImageWhenHighlighted = flag
    return self
  }
  
  @discardableResult
  func adjustsImageWhenDisabled(_ flag: Bool) -> UIButtonBuilder {
    button.adjustsImageWhenDisabled = flag
    return self
  }
  
  @discardableResult
  func showsTouchWhenHighlighted(_ flag: Bool) -> UIButtonBuilder {
    button.showsTouchWhenHighlighted = flag
    return self
  }
  
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for state: UIControl.State = .normal) -> UIButtonBuilder {
    button.setBackgroundImage(image, for: state)
    return self
  }
  
  @discardableResult
  func image(_ image: UIImage?, for state: UIControl.State = .normal) -> UIButtonBuilder {
    button.setImage(image, for: state)
    return self
  }
  
  // MARK: - Configuring Edge Insets
  
  @discardableResult
  func contentEdgeInsets(_ edgeInsets: EdgeInsets) -> UIButtonBuilder {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      button.contentEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      button.contentEdgeInsets = .init(top: vertical,
                                       left: horizontal,
                                       bottom: vertical,
                                       right: horizontal)
    case let .all(value):
      button.contentEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      button.contentEdgeInsets = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      button.contentEdgeInsets = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      button.contentEdgeInsets = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      button.contentEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      button.contentEdgeInsets = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      button.contentEdgeInsets = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      button.contentEdgeInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func titleEdgeInsets(_ edgeInsets: EdgeInsets) -> UIButtonBuilder {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      button.titleEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      button.titleEdgeInsets = .init(top: vertical,
                                     left: horizontal,
                                     bottom: vertical,
                                     right: horizontal)
    case let .all(value):
      button.titleEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      button.titleEdgeInsets = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      button.titleEdgeInsets = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      button.titleEdgeInsets = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      button.titleEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      button.titleEdgeInsets = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      button.titleEdgeInsets = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      button.titleEdgeInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func imageEdgeInsets(_ edgeInsets: EdgeInsets) -> UIButtonBuilder {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      button.imageEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      button.imageEdgeInsets = .init(top: vertical,
                                     left: horizontal,
                                     bottom: vertical,
                                     right: horizontal)
    case let .all(value):
      button.imageEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      button.imageEdgeInsets = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      button.imageEdgeInsets = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      button.imageEdgeInsets = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      button.imageEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      button.imageEdgeInsets = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      button.imageEdgeInsets = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      button.imageEdgeInsets = .zero
    }
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIButton {
    return button
  }
}
