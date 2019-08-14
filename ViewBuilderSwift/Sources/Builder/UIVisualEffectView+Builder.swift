//
//  UIVisualEffectView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIVisualEffectView {
  
  // MARK: - Helper
  
  /// Helper of `effect` property setter.
  ///
  /// - `blur` case for blur effect.
  /// - `vibrancy` case for vibrancy effect using specific blur effect.
  @discardableResult
  func effect(_ effect: VisualEffectViewBuilder.Effect) -> Builder {
    switch effect {
    case let .blur(style):
      base.effect = UIBlurEffect(style: style)
    case let .vibrancy(style):
      base.effect = UIVibrancyEffect(blurEffect: .init(style: style))
    }
    return self
  }
  
  // MARK: - Retrieving View Information
  
  /// Wrapper of `effect` property setter.
  @discardableResult
  func effect(_ effect: UIVisualEffect?) -> Builder {
    base.effect = effect
    return self
  }
}

#endif
