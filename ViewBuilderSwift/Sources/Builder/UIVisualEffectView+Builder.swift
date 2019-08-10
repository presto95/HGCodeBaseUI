//
//  UIVisualEffectView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIVisualEffectView {
  
  // MARK: - Retrieving View Information
  
  @discardableResult
  func effect(_ effect: VisualEffect) -> Builder {
    switch effect {
    case let .blur(style):
      let blurEffect = UIBlurEffect(style: style)
      base.effect = blurEffect
    case let .vibrancy(style):
      let vibrancyEffect = UIVibrancyEffect(blurEffect: .init(style: style))
      base.effect = vibrancyEffect
    }
    return self
  }
}

#endif
