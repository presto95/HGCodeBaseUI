//
//  UIStepper+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIStepper {
  
  // MARK: - Configuring the Stepper
  
  @discardableResult
  func isContinuous(_ flag: Bool) -> Builder {
    base.isContinuous = flag
    return self
  }
  
  @discardableResult
  func autorepeat(_ flag: Bool) -> Builder {
    base.autorepeat = flag
    return self
  }
  
  @discardableResult
  func wraps(_ flag: Bool) -> Builder {
    base.wraps = flag
    return self
  }
  
  @discardableResult
  func stepValue(_ value: Double) -> Builder {
    base.stepValue = value
    return self
  }
  
  // MARK: - Configuring the Stepper & Accessing the Stepper's Value
  
  @discardableResult
  func value(_ value: RangeValue<Double>) -> Builder {
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
  
  // MARK: - Customizing Appearance
  
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  @discardableResult
  func image(_ image: StepperImage) -> Builder {
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
}

#endif
