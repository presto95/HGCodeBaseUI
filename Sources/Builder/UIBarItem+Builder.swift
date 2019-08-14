//
//  UIBarItem+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIBarItem {
  
  // MARK: - Helper
  
  /// Helper of `imageInsets` property setter.
  @discardableResult
  func imageInsets(_ insets: EdgeInsets) -> Builder {
    base.imageInsets = insets.uiEdgeInsets
    return self
  }
  
  /// Helper of `landscapeImagePhoneInsets` property setter.
  @discardableResult
  func landscapeImagePhoneInsets(_ insets: EdgeInsets) -> Builder {
    base.landscapeImagePhoneInsets = insets.uiEdgeInsets
    return self
  }
  
  /// Helper of `largeContentSizeImageInsets` property setter.
  @discardableResult
  func largeContentSizeImageInsets(_ insets: EdgeInsets) -> Builder {
    base.largeContentSizeImageInsets = insets.uiEdgeInsets
    return self
  }

  // MARK: - Getting and Setting Properties
  
  /// Wrapper of `title` property setter.
  @discardableResult
  func title(_ title: String?) -> Builder {
    base.title = title
    return self
  }
  
  /// Wrapper of `image` property setter.
  @discardableResult
  func image(_ image: UIImage?) -> Builder {
    base.image = image
    return self
  }
  
  /// Wrapper of `landscapeImagePhone` property setter.
  @discardableResult
  func landscapeImagePhone(_ image: UIImage?) -> Builder {
    base.landscapeImagePhone = image
    return self
  }
  
  /// Wrapper of `largeContentSizeImage` property setter.
  @discardableResult
  func largeContentSizeImage(_ image: UIImage?) -> Builder {
    base.largeContentSizeImage = image
    return self
  }
  
  /// Wrapper of `imageInsets` property setter.
  @discardableResult
  func imageInsets(_ insets: UIEdgeInsets) -> Builder {
    base.imageInsets = insets
    return self
  }
  
  /// Wrapper of `landscapeImagePhoneInsets` property setter.
  @discardableResult
  func landscapeImagePhoneInsets(_ insets: UIEdgeInsets) -> Builder {
    base.landscapeImagePhoneInsets = insets
    return self
  }
  
  /// Wrapper of `largeContentSizeImageInsets` property setter.
  @discardableResult
  func largeContentSizeImageInsets(_ insets: UIEdgeInsets) -> Builder {
    base.largeContentSizeImageInsets = insets
    return self
  }
  
  /// Wrapper of `isEnabled` property setter.
  @discardableResult
  func isEnabled(_ flag: Bool) -> Builder {
    base.isEnabled = flag
    return self
  }
  
  /// Wrapper of `tag` property setter.
  @discardableResult
  func tag(_ tag: Int) -> Builder {
    base.tag = tag
    return self
  }
  
  // MARK: - Customizing Appearance
  
  /// Wrapper of `setTitleTextAttributes(_:for:)` method.
  @discardableResult
  func titleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?,
                           for state: UIControl.State) -> Builder {
    base.setTitleTextAttributes(attributes, for: state)
    return self
  }
}

#endif
