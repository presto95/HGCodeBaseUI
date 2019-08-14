//
//  UISlider+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UISlider {
  
  // MARK: - Helper
  
  /// Helper of `valueChanged` event of target-action pattern.
  @discardableResult
  func valueChanged(target: Any?, selector: Selector) -> Builder {
    base.addTarget(target, action: selector, for: .valueChanged)
    return self
  }
  
  /// Helper associated with **value** setting feature.
  ///
  /// - `range` case for `minimumValue` and `maximumValue` property setter.
  /// - `value` case for `value` property setter.
  /// - `min` case for `minimumValue` property setter.
  /// - `max` case for `maximumValue` property setter.
  @discardableResult
  func value(_ value: RangeValue<Float>) -> Builder {
    switch value {
    case let .each(value, min, max):
      base.value = value
      base.minimumValue = min
      base.maximumValue = max
    case let .range(min, max):
      base.minimumValue = min
      base.maximumValue = max
    case let .value(value):
      base.value = value
    case let .min(min):
      base.minimumValue = min
    case let .max(max):
      base.maximumValue = max
    }
    return self
  }
  
  /// Helper associated with **image** setting feature.
  ///
  /// - `value` case for `mininumValueImage` and `maximumValueImage` property setter.
  /// - `track` case for `setMinimumTrackImage(_:for:)` and `setMaximumTrackImage(_:for:)` method.
  /// - `thumb` case for `setThumbImage(_:for:)` method.
  @discardableResult
  func image(_ image: SliderBuilder.Image) -> Builder {
    switch image {
    case let .each(value, track, thumb):
      switch value {
      case let .each(min, max):
        base.minimumValueImage = min
        base.maximumValueImage = max
      case let .min(min):
        base.minimumValueImage = min
      case let .max(max):
        base.maximumValueImage = max
      }
      switch track {
      case let .each(min, max):
        base.setMinimumTrackImage(min.0, for: min.state)
        base.setMaximumTrackImage(max.0, for: max.state)
      case let .min(min):
        base.setMinimumTrackImage(min.0, for: min.state)
      case let .max(max):
        base.setMaximumTrackImage(max.0, for: max.state)
      }
      base.setThumbImage(thumb.0, for: thumb.state)
    case let .value(value):
      switch value {
      case let .each(min, max):
        base.minimumValueImage = min
        base.maximumValueImage = max
      case let .min(min):
        base.minimumValueImage = min
      case let .max(max):
        base.maximumValueImage = max
      }
    case let .track(track):
      switch track {
      case let .each(min, max):
        base.setMinimumTrackImage(min.0, for: min.state)
        base.setMaximumTrackImage(max.0, for: max.state)
      case let .min(min):
        base.setMinimumTrackImage(min.0, for: min.state)
      case let .max(max):
        base.setMaximumTrackImage(max.0, for: max.state)
      }
    case let .thumb(thumb):
      base.setThumbImage(thumb.0, for: thumb.state)
    }
    return self
  }
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `track` case for `minimumTrackTintColor` and `maximumTrackTintColor` property setter.
  /// - `thumb` case for `thumbTintColor` property setter.
  @discardableResult
  func color(_ color: SliderBuilder.Color) -> Builder {
    switch color {
    case let .each(track, thumb):
      switch track {
      case let .each(min, max):
        base.minimumTrackTintColor = min
        base.maximumTrackTintColor = max
      case let .min(min):
        base.minimumTrackTintColor = min
      case let .max(max):
        base.maximumTrackTintColor = max
      }
      base.thumbTintColor = thumb
    case let .track(track):
      switch track {
      case let .each(min, max):
        base.minimumTrackTintColor = min
        base.maximumTrackTintColor = max
      case let .min(min):
        base.minimumTrackTintColor = min
      case let .max(max):
        base.maximumTrackTintColor = max
      }
    case let .thumb(thumb):
      base.thumbTintColor = thumb
    }
    return self
  }
  
  // MARK: - Accessing the Slider's Value
  
  /// Wrapper of `value` property setter.
  @discardableResult
  func value(_ value: Float) -> Builder {
    base.value = value
    return self
  }
  
  /// Wrapper of `setValue(_:animated:)` method.
  @discardableResult
  func value(_ value: Float, animated: Bool) -> Builder {
    base.setValue(value, animated: animated)
    return self
  }
  
  // MARK: - Accessing the Slider's Value Limits
  
  /// Wrapper of `minimumValue` property setter.
  @discardableResult
  func mininumValue(_ value: Float) -> Builder {
    base.minimumValue = value
    return self
  }
  
  /// Wrapper of `maximumValue` property setter.
  @discardableResult
  func maximumValue(_ value: Float) -> Builder {
    base.maximumValue = value
    return self
  }
  
  // MARK: - Modifying the Slider's Behavior
  
  /// Wrapper of `isContinuous` property setter.
  @discardableResult
  func isContinuous(_ flag: Bool) -> Builder {
    base.isContinuous = flag
    return self
  }
  
  // MARK: - Changing the Slider's Appearance
  
  /// Wrapper of `minimumValueImage` property setter.
  @discardableResult
  func minimumValueImage(_ image: UIImage?) -> Builder {
    base.minimumValueImage = image
    return self
  }
  
  /// Wrapper of `maximumValueImage` property setter.
  @discardableResult
  func maximumValueImage(_ image: UIImage?) -> Builder {
    base.maximumValueImage = image
    return self
  }
  
  /// Wrapper of `minimumTrackTintColor` property setter.
  @discardableResult
  func minimumTrackTintColor(_ color: UIColor?) -> Builder {
    base.minimumTrackTintColor = color
    return self
  }
  
  /// Wrapper of `setMinimumTrackImage(_:for:)` method.
  @discardableResult
  func minimumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setMinimumTrackImage(image, for: state)
    return self
  }
  
  /// Wrapper of `maximumTrackTintColor` property setter.
  @discardableResult
  func maximumTrackTintColor(_ color: UIColor?) -> Builder {
    base.maximumTrackTintColor = color
    return self
  }
  
  /// Wrapper of `setMaximumTrackImage(_:for:)` method.
  @discardableResult
  func maximumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setMaximumTrackImage(image, for: state)
    return self
  }
  
  /// Wrapper of `thumbTintColor` property setter.
  @discardableResult
  func thumbTintColor(_ color: UIColor?) -> Builder {
    base.thumbTintColor = color
    return self
  }
  
  /// Wrapper of `setThumbImage(_:for:)` method.
  @discardableResult
  func thumbImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setThumbImage(image, for: state)
    return self
  }
}

#endif
