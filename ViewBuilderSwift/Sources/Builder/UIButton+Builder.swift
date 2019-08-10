//
//  UIButton+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIButton {
  
  // MARK: - Configuring the Button Title
  
  @discardableResult
  func title(_ title: Text, for state: UIControl.State = .normal) -> Builder {
    switch title {
    case let .plain(title):
      base.setTitle(title, for: state)
    case let .attributed(title, attributes):
      let attributedString = NSAttributedString(string: title, attributes: attributes)
      base.setAttributedTitle(attributedString, for: state)
    }
    return self
  }
  
  @discardableResult
  func titleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Builder {
    base.setTitleColor(color, for: state)
    return self
  }
  
  @discardableResult
  func titleShadowColor(_ color: UIColor?,
                        for state: UIControl.State = .normal) -> Builder {
    base.setTitleShadowColor(color, for: state)
    return self
  }
  
  @discardableResult
  func reversesTitleShadowWhenHighlighted(_ flag: Bool) -> Builder {
    base.reversesTitleShadowWhenHighlighted = flag
    return self
  }
  
  // MARK: - Configurint Button Presentation
  
  @discardableResult
  func adjustsImageWhenHighlighted(_ flag: Bool) -> Builder {
    base.adjustsImageWhenHighlighted = flag
    return self
  }
  
  @discardableResult
  func adjustsImageWhenDisabled(_ flag: Bool) -> Builder {
    base.adjustsImageWhenDisabled = flag
    return self
  }
  
  @discardableResult
  func showsTouchWhenHighlighted(_ flag: Bool) -> Builder {
    base.showsTouchWhenHighlighted = flag
    return self
  }
  
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for state: UIControl.State = .normal) -> Builder {
    base.setBackgroundImage(image, for: state)
    return self
  }
  
  @discardableResult
  func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Builder {
    base.setImage(image, for: state)
    return self
  }
  
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  // MARK: - Configuring Edge Insets
  
  @discardableResult
  func contentEdgeInsets(_ edgeInsets: EdgeInsets) -> Builder {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      base.contentEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      base.contentEdgeInsets = .init(top: vertical,
                                       left: horizontal,
                                       bottom: vertical,
                                       right: horizontal)
    case let .all(value):
      base.contentEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      base.contentEdgeInsets = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      base.contentEdgeInsets = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      base.contentEdgeInsets = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      base.contentEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      base.contentEdgeInsets = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      base.contentEdgeInsets = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      base.contentEdgeInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func titleEdgeInsets(_ edgeInsets: EdgeInsets) -> Builder {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      base.titleEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      base.titleEdgeInsets = .init(top: vertical,
                                     left: horizontal,
                                     bottom: vertical,
                                     right: horizontal)
    case let .all(value):
      base.titleEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      base.titleEdgeInsets = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      base.titleEdgeInsets = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      base.titleEdgeInsets = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      base.titleEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      base.titleEdgeInsets = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      base.titleEdgeInsets = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      base.titleEdgeInsets = .zero
    }
    return self
  }
  
  @discardableResult
  func imageEdgeInsets(_ edgeInsets: EdgeInsets) -> Builder {
    switch edgeInsets {
    case let .each(top, left, bottom, right):
      base.imageEdgeInsets = .init(top: top, left: left, bottom: bottom, right: right)
    case let .symmetric(horizontal, vertical):
      base.imageEdgeInsets = .init(top: vertical,
                                     left: horizontal,
                                     bottom: vertical,
                                     right: horizontal)
    case let .all(value):
      base.imageEdgeInsets = .init(top: value, left: value, bottom: value, right: value)
    case let .top(value):
      base.imageEdgeInsets = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      base.imageEdgeInsets = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      base.imageEdgeInsets = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      base.imageEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: value)
    case let .horizontal(value):
      base.imageEdgeInsets = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      base.imageEdgeInsets = .init(top: value, left: 0, bottom: value, right: 0)
    case .zero:
      base.imageEdgeInsets = .zero
    }
    return self
  }
  
  // MARK: - Build
  
  func build() -> Base {
    return base
  }
}

#endif
