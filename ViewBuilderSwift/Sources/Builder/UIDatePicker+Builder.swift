//
//  UIDatePicker+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIDatePicker {
  
  // MARK: - Helper
  
  /// Helper method associated with **date** setting feature.
  ///
  /// - `range` case for `minimumDate` and `maximumDate` property setter.
  /// - `date` case for `date` property setter.
  /// - `min` case for `minimumDate` property setter.
  /// - `max` case for `maximumDate` property setter.
  @discardableResult
  func date(_ date: DatePickerBuilder.DateType) -> Builder {
    switch date {
    case let .each(date, min, max):
      base.date = date
      base.minimumDate = min
      base.maximumDate = max
    case let .range(min, max):
      base.minimumDate = min
      base.maximumDate = max
    case let .date(date):
      base.date = date
    case let .min(min):
      base.minimumDate = min
    case let .max(max):
      base.maximumDate = max
    }
    return self
  }
  
  // MARK: - Managing the Date and Calendar
  
  /// Wrapper of `calendar` property setter.
  @discardableResult
  func calendar(_ calendar: Calendar!) -> Builder {
    base.calendar = calendar
    return self
  }
  
  /// Wrapper of `date` property setter.
  @discardableResult
  func date(_ date: Date) -> Builder {
    base.date = date
    return self
  }
  
  /// Wrapper of `setDate(_:animated:)` method.
  @discardableResult
  func date(_ date: Date, animated: Bool) -> Builder {
    base.setDate(date, animated: animated)
    return self
  }
  
  /// Wrapper of `locale` property setter.
  @discardableResult
  func locale(_ locale: Locale?) -> Builder {
    base.locale = locale
    return self
  }
  
  /// Wrapper of `timeZone` property setter.
  @discardableResult
  func timeZone(_ timeZone: TimeZone?) -> Builder {
    base.timeZone = timeZone
    return self
  }
  
  // MARK: - Configuring the Date Picker Mode
  
  /// Wrapper of `datePickerMode` property setter.
  @discardableResult
  func datePickerMode(_ mode: UIDatePicker.Mode) -> Builder {
    base.datePickerMode = mode
    return self
  }
  
  // MARK: - Configuring Temporal Attributes
  
  /// Wrapper of `maximumDate` property setter.
  @discardableResult
  func maximumDate(_ date: Date?) -> Builder {
    base.maximumDate = date
    return self
  }
  
  /// Wrapper of `minimumDate` property setter.
  @discardableResult
  func minimumDate(_ date: Date?) -> Builder {
    base.minimumDate = date
    return self
  }
  
  /// Wrapper of `minuteInterval` property setter.
  @discardableResult
  func minuteInterval(_ interval: Int) -> Builder {
    base.minuteInterval = interval
    return self
  }
  
  /// Wrapper of `countDownDuration` property setter.
  @discardableResult
  func countDownDuration(_ duration: TimeInterval) -> Builder {
    base.countDownDuration = duration
    return self
  }
}

#endif
