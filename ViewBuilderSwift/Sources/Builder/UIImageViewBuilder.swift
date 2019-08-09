//
//  UIImageViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UIImageView {
  
  @discardableResult
  func builder() -> UIImageViewBuilder {
    return .init(imageView: self)
  }
}

public final class UIImageViewBuilder {
  
  private let imageView: UIImageView
  
  init() {
    imageView = .init()
  }
  
  init(imageView: UIImageView) {
    self.imageView = imageView
  }
  
  // MARK: - Accessing the Displayed Images
  
  @discardableResult
  func image(_ image: UIImage?) -> UIImageViewBuilder {
    imageView.image = image
    return self
  }
  
  @discardableResult
  func highlightedImage(_ image: UIImage?) -> UIImageViewBuilder {
    imageView.highlightedImage = image
    return self
  }
  
  // MARK: - Animtaing a Sequence of Images
  
  @discardableResult
  func animationImages(_ images: [UIImage]?) -> UIImageViewBuilder {
    imageView.animationImages = images
    return self
  }
  
  @discardableResult
  func highlightedAnimationImages(_ images: [UIImage]?) -> UIImageViewBuilder {
    imageView.highlightedAnimationImages = images
    return self
  }
  
  @discardableResult
  func animation(_ animation: ImageViewAnimation) -> UIImageViewBuilder {
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
  func isHighlighted(_ flag: Bool) -> UIImageViewBuilder {
    imageView.isHighlighted = flag
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIImageView {
    return imageView
  }
}
