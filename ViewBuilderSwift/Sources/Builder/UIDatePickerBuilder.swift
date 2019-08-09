//
//  UIDatePickerBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UIDatePicker {
  
  @discardableResult
  func builder() -> UIDatePickerBuilder {
    return .init(datePicker: self)
  }
}

public final class UIDatePickerBuilder {
  
  private let datePicker: UIDatePicker
  
  init() {
    datePicker = .init()
  }
  
  init(datePicker: UIDatePicker) {
    self.datePicker = datePicker
  }
  
  // MARK: - Managing the Date and Calendar
  
  @discardableResult
  func calendar(_ calendar: Calendar!) -> UIDatePickerBuilder {
    datePicker.calendar = calendar
    return self
  }
  
  @discardableResult
  func locale(_ locale: Locale?) -> UIDatePickerBuilder {
    datePicker.locale = locale
    return self
  }
  
  @discardableResult
  func timeZone(_ timeZone: TimeZone?) -> UIDatePickerBuilder {
    datePicker.timeZone = timeZone
    return self
  }
  
  // MARK: - Configuring the Date Picker Mode
  
  @discardableResult
  func datePickerMode(_ mode: UIDatePicker.Mode) -> UIDatePickerBuilder {
    datePicker.datePickerMode = mode
    return self
  }
  
  // MARK: - Managing the Date and Calendar & Configuring Temporal Attributes
  
  @discardableResult
  func date(_ date: DatePickerDate) -> UIDatePickerBuilder {
    switch date {
    case let .each(date, maximumDate, minimumDate):
      datePicker.date = date
      datePicker.maximumDate = maximumDate
      datePicker.minimumDate = minimumDate
    case let .range(maximumDate, minimumDate):
      datePicker.maximumDate = maximumDate
      datePicker.minimumDate = minimumDate
    case let .date(date):
      datePicker.date = date
    case let .maximum(date):
      datePicker.maximumDate = date
    case let .minimum(date):
      datePicker.minimumDate = date
    }
    return self
  }
  
  // MARK: - Configuring Temporal Attributes
  
  @discardableResult
  func minuteInterval(_ interval: Int) -> UIDatePickerBuilder {
    datePicker.minuteInterval = interval
    return self
  }
  
  @discardableResult
  func countDownDuration(_ duration: TimeInterval) -> UIDatePickerBuilder {
    datePicker.countDownDuration = duration
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIDatePicker {
    return datePicker
  }
}
