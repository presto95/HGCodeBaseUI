//
//  UIStepper+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIStepper {
  
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
  func value(_ value: RangeValue<Double>) -> Builder {
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
  /// - `background` case for `setBackgroundImage(_:for:)` method.
  /// - `decrement` case for `setDecrementImage(_:for:)` method.
  /// - `divider` case for `setDividerImage(_:forLeftSegmentState:rightSegmentState:)` method.
  /// - `increment` case for `setIncrementImage(_:for:)` method.
  @discardableResult
  func image(_ image: StepperBuilder.Image) -> Builder {
    switch image {
    case let .each(background, decrement, divider, increment):
      base.setBackgroundImage(background.0, for: background.state)
      base.setDecrementImage(decrement.0, for: decrement.state)
      base.setDividerImage(divider.0,
                           forLeftSegmentState: divider.leftSegmentState,
                           rightSegmentState: divider.rightSegmentState)
      base.setIncrementImage(increment.0, for: increment.state)
    case let .background(image, state):
      base.setBackgroundImage(image, for: state)
    case let .decrement(image, state):
      base.setDecrementImage(image, for: state)
    case let .divider(image, leftSegmentState, rightSegmentState):
      base.setDividerImage(image,
                           forLeftSegmentState: leftSegmentState,
                           rightSegmentState: rightSegmentState)
    case let .increment(image, state):
      base.setIncrementImage(image, for: state)
    }
    return self
  }
  
  // MARK: - Configuring the Stepper
  
  /// Wrapper of `isContinous` property setter.
  @discardableResult
  func isContinuous(_ flag: Bool) -> Builder {
    base.isContinuous = flag
    return self
  }
  
  /// Wrapper of `autorepeat` property setter.
  @discardableResult
  func autorepeat(_ flag: Bool) -> Builder {
    base.autorepeat = flag
    return self
  }
  
  /// Wrapper of `wraps` property setter.
  @discardableResult
  func wraps(_ flag: Bool) -> Builder {
    base.wraps = flag
    return self
  }
  
  /// Wrapper of `minimumValue` property setter.
  @discardableResult
  func minimumValue(_ value: Double) -> Builder {
    base.minimumValue = value
    return self
  }
  
  /// Wrapper of `maximumValue` property setter.
  @discardableResult
  func maximumValue(_ value: Double) -> Builder {
    base.maximumValue = value
    return self
  }
  
  /// Wrapper of `stepValue` property setter.
  @discardableResult
  func stepValue(_ value: Double) -> Builder {
    base.stepValue = value
    return self
  }
  
  // MARK: - Accessing the Stepper's Value
  
  /// Wrapper of `value` property setter.
  @discardableResult
  func value(_ value: Double) -> Builder {
    base.value = value
    return self
  }
  
  // MARK: - Customizing Appearance
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor?) -> Builder {
    base.tintColor = color
    return self
  }
  
  /// Wrapper of `setBackgroundImage(_:for:)` method.
  @discardableResult
  func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setBackgroundImage(image, for: state)
    return self
  }
  
  /// Wrapper of `setDecrementImage(_:for:)` method.
  @discardableResult
  func decrementImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setDecrementImage(image, for: state)
    return self
  }
  
  /// Wrapper of `setDividerImage(_:forLeftSegmentState:rightSegmentState:)` method.
  @discardableResult
  func dividerImage(_ image: UIImage?,
                    forLeftSegmentState leftSegmentState: UIControl.State,
                    rightSegmentState: UIControl.State) -> Builder {
    base.setDividerImage(image,
                         forLeftSegmentState: leftSegmentState,
                         rightSegmentState: rightSegmentState)
    return self
  }
  
  /// Wrapper of `setIncrementImage(_:for:)` method.
  @discardableResult
  func incrementImage(_ image: UIImage?, for state: UIControl.State) -> Builder {
    base.setIncrementImage(image, for: state)
    return self
  }
}

#endif
