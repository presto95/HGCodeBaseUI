//
//  UISlider+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UISlider {
  
  // MARK: - Accessing the Slider's Value & Accessing the Slider's Value Limits
  
  @discardableResult
  func value(_ value: RangeValue<Float>) -> Builder {
    switch value {
    case let .each(value, maximum, minimum):
      base.value = value
      base.maximumValue = maximum
      base.minimumValue = minimum
    case let .range(maximum, minimum):
      base.maximumValue = maximum
      base.minimumValue = minimum
    case let .value(value):
      base.value = value
    case let .maximum(value):
      base.maximumValue = value
    case let .minimum(value):
      base.minimumValue = value
    }
    return self
  }
  
  // MARK: - Modifying the Slider's Behavior
  
  @discardableResult
  func isContinous(_ flag: Bool) -> Builder {
    base.isContinuous = flag
    return self
  }
  
  // MARK: - Changing the Slider's Appearance
  
  @discardableResult
  func image(_ image: SliderImage) -> Builder {
    switch image {
    case let .each(minimumValue, maximumValue, minimumTrack, maximumTrack, thumb):
      base.minimumValueImage = minimumValue
      base.maximumValueImage = maximumValue
      base.setMinimumTrackImage(minimumTrack.0, for: minimumTrack.state)
      base.setMaximumTrackImage(maximumTrack.0, for: maximumTrack.state)
      base.setThumbImage(thumb.0, for: thumb.state)
    case let .minimumValue(image):
      base.minimumValueImage = image
    case let .maximumValue(image):
      base.maximumValueImage = image
    case let .minimumTrack(image, state):
      base.setMinimumTrackImage(image, for: state)
    case let .maximumTrack(image, state):
      base.setMaximumTrackImage(image, for: state)
    case let .thumb(image, state):
      base.setThumbImage(image, for: state)
    }
    return self
  }
  
  @discardableResult
  func tintColor(_ color: SliderColor) -> Builder {
    switch color {
    case let .each(minimumTrack, maximumTrack, thumb):
      base.minimumTrackTintColor = minimumTrack
      base.maximumTrackTintColor = maximumTrack
      base.thumbTintColor = thumb
    case let .trackRange(minimum, maximum):
      base.minimumTrackTintColor = minimum
      base.maximumTrackTintColor = maximum
    case let .minimumTrack(color):
      base.minimumTrackTintColor = color
    case let .maximumTrack(color):
      base.maximumTrackTintColor = color
    case let .thumb(color):
      base.thumbTintColor = color
    }
    return self
  }
}

#endif
