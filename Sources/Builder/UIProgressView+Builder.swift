//
//  UIProgressView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIProgressView {
  
  // MARK: - Helper
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `progress` case for `progressTintColor` property setter.
  /// - `track` case for `trackTintColor` property setter.
  @discardableResult
  func color(_ progress: ProgressViewBuilder.Progress<UIColor?>) -> Builder {
    switch progress {
    case let .each(progress, track):
      base.progressTintColor = progress
      base.trackTintColor = track
    case let .progress(progress):
      base.progressTintColor = progress
    case let .track(track):
      base.trackTintColor = track
    }
    return self
  }
  
  /// Helper associated with **image** setting feature.
  ///
  /// - `progress` case for `progressImage` property setter.
  /// - `track` case for `trackImage` property setter.
  @discardableResult
  func image(_ progress: ProgressViewBuilder.Progress<UIImage?>) -> Builder {
    switch progress {
    case let .each(progress, track):
      base.progressImage = progress
      base.trackImage = track
    case let .progress(progress):
      base.progressImage = progress
    case let .track(track):
      base.trackImage = track
    }
    return self
  }
  
  // MARK: - Managing the Progress Bar
  
  /// Wrapper of `progress` property setter.
  @discardableResult
  func progress(_ progress: Float) -> Builder {
    base.progress = progress
    return self
  }
  
  /// Wrapper of `setProgress(_:animated:)` method.
  @discardableResult
  func progress(_ progress: Float, animated: Bool) -> Builder {
    base.setProgress(progress, animated: animated)
    return self
  }
  
  /// Wrapper of `observedProgress` propery setter.
  @discardableResult
  func observedProgress(_ progress: Progress?) -> Builder {
    base.observedProgress = progress
    return self
  }
  
  // MARK: - Configuring the Progress Bar
  
  /// Wrapper of `progressViewStyle` property setter.
  @discardableResult
  func progressViewStyle(_ style: UIProgressView.Style) -> Builder {
    base.progressViewStyle = style
    return self
  }
  
  /// Wrapper of `progressTintColor` property setter.
  @discardableResult
  func progressTintColor(_ color: UIColor?) -> Builder {
    base.progressTintColor = color
    return self
  }
  
  /// Wrapper of `progressImage` property setter.
  @discardableResult
  func progressImage(_ image: UIImage?) -> Builder {
    base.progressImage = image
    return self
  }
  
  /// Wrapper of `trackTintColor` property setter.
  @discardableResult
  func trackTintColor(_ color: UIColor?) -> Builder {
    base.trackTintColor = color
    return self
  }
  
  /// Wrapper of `trackImage` property setter.
  @discardableResult
  func trackImage(_ image: UIImage?) -> Builder {
    base.trackImage = image
    return self
  }
}

#endif
