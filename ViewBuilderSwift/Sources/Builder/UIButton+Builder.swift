//
//  UIButton+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIButton {
  
  // MARK: - Helper
  
  /// Helper method associated with **title** setting feature.
  ///
  /// - `plain` case for `setTitle(_:for:)` method.
  /// - `attributed` case for `setAttributed(_:for:)` method.
  @discardableResult
  func title(_ title: Text, for state: UIControl.State = .normal) -> Builder {
    switch title {
    case let .plain(title):
      base.setTitle(title, for: state)
    case let .attributed(title, attributes):
      base.setAttributedTitle(.init(string: title, attributes: attributes), for: state)
    }
    return self
  }
  
  /// Helper method associated with **title color** setting feature.
  ///
  /// - `plain` case for `setTitleColor(_:for:)` method.
  /// - `shadow` case for `setTitleShadowColor(_:for:)` method.
  @discardableResult
  func titleColor(_ titleColor: ButtonBuilder.TitleColor,
                  for state: UIControl.State = .normal) -> Builder {
    switch titleColor {
    case let .each(plain, shadow):
      base.setTitleColor(plain, for: state)
      base.setTitleShadowColor(shadow, for: state)
    case let .plain(plain):
      base.setTitleColor(plain, for: state)
    case let .shadow(shadow):
      base.setTitleShadowColor(shadow, for: state)
    }
    return self
  }
  
  /// Helper method associated with **image** setting feature.
  ///
  /// - `plain` case for `setImage(_:for:)` method.
  /// - `background` case for `setBackgroundImage(_:for:)` method.
  @discardableResult
  func image(_ image: ButtonBuilder.Image, for state: UIControl.State = .normal) -> Builder {
    switch image {
    case let .each(plain, background):
      base.setImage(plain, for: state)
      base.setBackgroundImage(background, for: state)
    case let .plain(plain):
      base.setImage(plain, for: state)
    case let .background(background):
      base.setBackgroundImage(background, for: state)
    }
    return self
  }
  
  /// Helper method associated with **edge insets** setting feature.
  ///
  /// - `content` case for `contentEdgeInsets` property setter.
  /// - `title` case for `titleEdgeInsets` property setter.
  /// - `image` case for `imageEdgeInsets` property setter.
  @discardableResult
  func edgeInsets(_ edgeInsets: ButtonBuilder.EdgeInset) -> Builder {
    switch edgeInsets {
    case let .each(content, title, image):
      base.contentEdgeInsets = content.uiEdgeInsets
      base.titleEdgeInsets = title.uiEdgeInsets
      base.imageEdgeInsets = image.uiEdgeInsets
    case let .content(content):
      base.contentEdgeInsets = content.uiEdgeInsets
    case let .title(title):
      base.titleEdgeInsets = title.uiEdgeInsets
    case let .image(image):
      base.imageEdgeInsets = image.uiEdgeInsets
    }
    return self
  }
  
  // MARK: - Configuring the Button Title
  
  /// Wrapper of `setTitle(_:for:)` method.
  @discardableResult
  func title(_ title: String?, for state: UIControl.State) -> Builder {
    base.setTitle(title, for: state)
    return self
  }
  
  /// Wrapper of `setAttributedTitle(_:for:)` method.
  @discardableResult
  func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Builder {
    base.setAttributedTitle(title, for: state)
    return self
  }
  
  /// Wrapper of `setTitleColor(_:for:)` method.
  @discardableResult
  func titleColor(_ color: UIColor?, for state: UIControl.State) -> Builder {
    base.setTitleColor(color, for: state)
    return self
  }
  
  /// Wrapper of `setTitleShadowColor(_:for:)` method.
  @discardableResult
  func titleShadowColor(_ color: UIColor?, for state: UIControl.State) -> Builder {
    base.setTitleShadowColor(color, for: state)
    return self
  }
  
  /// Wrapper of `reversesTitleShadowWhenHighlighted` property setter.
  @discardableResult
  func reversesTitleShadowWhenHighlighted(_ flag: Bool) -> Builder {
    base.reversesTitleShadowWhenHighlighted = flag
    return self
  }
  
  // MARK: - Configurint Button Presentation
  
  /// Wrapper of `adjustsImageWhenHighlighted` property setter.
  @discardableResult
  func adjustsImageWhenHighlighted(_ flag: Bool) -> Builder {
    base.adjustsImageWhenHighlighted = flag
    return self
  }
  
  /// Wrapper of `adjustsImageWhenDisabled` property setter.
  @discardableResult
  func adjustsImageWhenDisabled(_ flag: Bool) -> Builder {
    base.adjustsImageWhenDisabled = flag
    return self
  }
  
  /// Wrapper of `showsTouchWhenHighlighted` property setter.
  @discardableResult
  func showsTouchWhenHighlighted(_ flag: Bool) -> Builder {
    base.showsTouchWhenHighlighted = flag
    return self
  }
  
  /// Wrapper of `setBackgroundImage(_:for:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setBackgroundImage(image, for: state)
    return self
  }
  
  /// Wrapper of `setImage(_:for:)` method.
  @discardableResult
  func image(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setImage(image, for: state)
    return self
  }
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  // MARK: - Configuring Edge Insets
  
  /// Wrapper of `contentEdgeInsets` property setter.
  @discardableResult
  func contentEdgeInsets(_ insets: UIEdgeInsets) -> Builder {
    base.contentEdgeInsets = insets
    return self
  }
  
  /// Wrapper of `titleEdgeInsets` property setter.
  @discardableResult
  func titleEdgeInsets(_ insets: UIEdgeInsets) -> Builder {
    base.titleEdgeInsets = insets
    return self
  }
  
  /// Wrapper of `imageEdgeInsets` property setter.
  @discardableResult
  func imageEdgeInsets(_ insets: UIEdgeInsets) -> Builder {
    base.imageEdgeInsets = insets
    return self
  }
}

#endif
