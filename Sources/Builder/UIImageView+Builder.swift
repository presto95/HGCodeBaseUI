//
//  UIImageView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIImageView {
  
  // MARK: - Helper
  
  /// Helper associated with **animation** setting feature.
  ///
  /// - `images` case for `animationImages` and `highlightedAnimationImages` property setter.
  /// - `duration` case for `animationDuration` property setter.
  /// - `repeatCount` case for `animationRepeatCount` property setter.
  @discardableResult
  func animation(_ animation: ImageViewBuilder.Animation) -> Builder {
    switch animation {
    case let .each(images, duration, repeatCount):
      switch images {
      case let .each(plain, highlighted):
        base.animationImages = plain
        base.highlightedAnimationImages = highlighted
      case let .plain(plain):
        base.animationImages = plain
      case let .highlighted(highlighted):
        base.highlightedAnimationImages = highlighted
      }
      base.animationDuration = duration
      base.animationRepeatCount = repeatCount
    case let .images(images):
      switch images {
      case let .each(plain, highlighted):
        base.animationImages = plain
        base.highlightedAnimationImages = highlighted
      case let .plain(plain):
        base.animationImages = plain
      case let .highlighted(highlighted):
        base.highlightedAnimationImages = highlighted
      }
    case let .duration(duration):
      base.animationDuration = duration
    case let .repeatCount(repeatCount):
      base.animationRepeatCount = repeatCount
      
    }
    return self
  }
  
  /// Helper associated with **image** setting feature.
  ///
  /// - `plain` case for `image` property setter.
  /// - `highlighted` case for `highlightedImage` property setter.
  /// - `animation` case for `animationImages` and `highlightedAnimationImages` property setter.
  @discardableResult
  func image(_ image: ImageViewBuilder.Image) -> Builder {
    switch image {
    case let .each(plain, highlighted, animation):
      base.image = plain
      base.highlightedImage = highlighted
      switch animation {
      case let .each(plain, highlighted):
        base.animationImages = plain
        base.highlightedAnimationImages = highlighted
      case let .plain(plain):
        base.animationImages = plain
      case let .highlighted(highlighted):
        base.highlightedAnimationImages = highlighted
      }
    case let .plain(plain):
      base.image = plain
    case let .highlighted(highlighted):
      base.highlightedImage = highlighted
    case let .animation(animation):
      switch animation {
      case let .each(plain, highlighted):
        base.animationImages = plain
        base.highlightedAnimationImages = highlighted
      case let .plain(plain):
        base.animationImages = plain
      case let .highlighted(highlighted):
        base.highlightedAnimationImages = highlighted
      }
    }
    return self
  }
  
  // MARK: - Accessing the Displayed Images
  
  /// Wrapper of `image` property setter.
  @discardableResult
  func image(_ image: UIImage?) -> Builder {
    base.image = image
    return self
  }
  
  /// Wrapper of `highlightedImage` property setter.
  @discardableResult
  func highlightedImage(_ image: UIImage?) -> Builder {
    base.highlightedImage = image
    return self
  }
  
  // MARK: - Animtaing a Sequence of Images
  
  /// Wrapper of `animationImages` property setter.
  @discardableResult
  func animationImages(_ images: [UIImage]?) -> Builder {
    base.animationImages = images
    return self
  }
  
  /// Wrapper of `highlightedAnimationImages` property setter.
  @discardableResult
  func highlightedAnimationImages(_ images: [UIImage]?) -> Builder {
    base.highlightedAnimationImages = images
    return self
  }
  
  /// Wrapper of `animationDuration` property setter.
  @discardableResult
  func animationDuration(_ duration: TimeInterval) -> Builder {
    base.animationDuration = duration
    return self
  }
  
  /// Wrapper of `animationRepeatCount` property setter.
  @discardableResult
  func animationRepeatCount(_ count: Int) -> Builder {
    base.animationRepeatCount = count
    return self
  }
  
  // MARK: - Configuring the Image View
  
  /// Wrapper of `isUserInteractionEnabled` property setter.
  @discardableResult
  func isUserInteractionEnabled(_ flag: Bool) -> Builder {
    base.isUserInteractionEnabled = flag
    return self
  }
  
  /// Wrapper of `isHighlighted` property setter.
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
}

#endif
