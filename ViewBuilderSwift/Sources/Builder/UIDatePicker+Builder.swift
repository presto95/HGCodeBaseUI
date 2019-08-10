//
//  UIDatePicker+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIDatePicker {
  
  // MARK: - Managing the Date and Calendar
  
  @discardableResult
  func calendar(_ calendar: Calendar!) -> Builder {
    base.calendar = calendar
    return self
  }
  
  @discardableResult
  func locale(_ locale: Locale?) -> Builder {
    base.locale = locale
    return self
  }
  
  @discardableResult
  func timeZone(_ timeZone: TimeZone?) -> Builder {
    base.timeZone = timeZone
    return self
  }
  
  // MARK: - Configuring the Date Picker Mode
  
  @discardableResult
  func datePickerMode(_ mode: UIDatePicker.Mode) -> Builder {
    base.datePickerMode = mode
    return self
  }
  
  // MARK: - Managing the Date and Calendar & Configuring Temporal Attributes
  
  @discardableResult
  func date(_ date: DatePickerBuilder.DateType) -> Builder {
    switch date {
    case let .each(date, maximumDate, minimumDate):
      base.date = date
      base.maximumDate = maximumDate
      base.minimumDate = minimumDate
    case let .range(maximumDate, minimumDate):
      base.maximumDate = maximumDate
      base.minimumDate = minimumDate
    case let .date(date):
      base.date = date
    case let .maximum(date):
      base.maximumDate = date
    case let .minimum(date):
      base.minimumDate = date
    }
    return self
  }
  
  // MARK: - Configuring Temporal Attributes
  
  @discardableResult
  func minuteInterval(_ interval: Int) -> Builder {
    base.minuteInterval = interval
    return self
  }
  
  @discardableResult
  func countDownDuration(_ duration: TimeInterval) -> Builder {
    base.countDownDuration = duration
    return self
  }
}

#endif
