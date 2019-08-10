//
//  UIImageView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIImageView {
  
  // MARK: - Accessing the Displayed Images
  
  @discardableResult
  func image(_ image: UIImage?) -> Builder {
    base.image = image
    return self
  }
  
  @discardableResult
  func highlightedImage(_ image: UIImage?) -> Builder {
    base.highlightedImage = image
    return self
  }
  
  // MARK: - Animtaing a Sequence of Images
  
  @discardableResult
  func animationImages(_ images: [UIImage]?) -> Builder {
    base.animationImages = images
    return self
  }
  
  @discardableResult
  func highlightedAnimationImages(_ images: [UIImage]?) -> Builder {
    base.highlightedAnimationImages = images
    return self
  }
  
  @discardableResult
  func animation(_ animation: ImageViewAnimation) -> Builder {
    switch animation {
    case let .each(duration, repeatCount):
      base.animationDuration = duration
      base.animationRepeatCount = repeatCount
    case let .duration(duration):
      base.animationDuration = duration
    case let .repeatCount(repeatCount):
      base.animationRepeatCount = repeatCount
    }
    return self
  }
  
  // MARK: - Configuring the Image View
  
  @discardableResult
  func isUserInteractionEnabled(_ flag: Bool) -> Builder {
    base.isUserInteractionEnabled = flag
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
  
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIImageView {
    return base
  }
}

#endif
