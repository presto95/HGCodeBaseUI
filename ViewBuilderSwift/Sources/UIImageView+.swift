//
//  UIImageView+.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UIImageView {
  
  enum Animation {
    
    case each(duration: TimeInterval, repeatCount: Int)
    
    case duration(TimeInterval)
    
    case repeatCount(Int)
  }
  
  // MARK: - Accessing the Displayed Images
  
  @discardableResult
  func image(_ image: UIImage?) -> Self {
    self.image = image
    return self
  }
  
  @discardableResult
  func highlightedImage(_ image: UIImage?) -> Self {
    self.highlightedImage = image
    return self
  }
  
  // MARK: - Animtaing a Sequence of Images
  
  @discardableResult
  func animationImages(_ images: [UIImage]?) -> Self {
    self.animationImages = images
    return self
  }
  
  @discardableResult
  func highlightedAnimationImages(_ images: [UIImage]?) -> Self {
    self.highlightedAnimationImages = images
    return self
  }
  
  @discardableResult
  func animation(_ animation: Animation) -> Self {
    switch animation {
    case let .each(duration, repeatCount):
      self.animationDuration = duration
      self.animationRepeatCount = repeatCount
    case let .duration(duration):
      self.animationDuration = duration
    case let .repeatCount(repeatCount):
      self.animationRepeatCount = repeatCount
    }
    return self
  }
  
  // MARK: - Configuring the Image View
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Self {
    self.isHighlighted = flag
    return self
  }
}
