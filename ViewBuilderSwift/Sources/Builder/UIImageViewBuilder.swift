//
//  UIImageViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

internal final class UIImageViewBuilder {
  
  private let imageView: UIImageView
  
  init() {
    imageView = .init()
  }
  
  // MARK: - Accessing the Displayed Images
  
  @discardableResult
  func image(_ image: UIImage?) -> Self {
    imageView.image = image
    return self
  }
  
  @discardableResult
  func highlightedImage(_ image: UIImage?) -> Self {
    imageView.highlightedImage = image
    return self
  }
  
  // MARK: - Animtaing a Sequence of Images
  
  @discardableResult
  func animationImages(_ images: [UIImage]?) -> Self {
    imageView.animationImages = images
    return self
  }
  
  @discardableResult
  func highlightedAnimationImages(_ images: [UIImage]?) -> Self {
    imageView.highlightedAnimationImages = images
    return self
  }
  
  @discardableResult
  func animation(_ animation: ImageViewAnimation) -> Self {
    switch animation {
    case let .each(duration, repeatCount):
      imageView.animationDuration = duration
      imageView.animationRepeatCount = repeatCount
    case let .duration(duration):
      imageView.animationDuration = duration
    case let .repeatCount(repeatCount):
      imageView.animationRepeatCount = repeatCount
    }
    return self
  }
  
  // MARK: - Configuring the Image View
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Self {
    imageView.isHighlighted = flag
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIImageView {
    return imageView
  }
}
