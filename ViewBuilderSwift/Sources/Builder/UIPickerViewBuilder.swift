//
//  UIPickerViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UIPickerView {
  
  @discardableResult
  func builder() -> UIPickerViewBuilder {
    return .init(pickerView: self)
  }
}

public final class UIPickerViewBuilder {
  
  private let pickerView: UIPickerView
  
  init() {
    pickerView = .init()
  }
  
  init(pickerView: UIPickerView) {
    self.pickerView = pickerView
  }
  
  // MARK: - Providing the Picker Data
  
  @discardableResult
  func pickerViewDataSource<T>(
    _ dataSource: T?
  ) -> UIPickerViewBuilder where T: UIPickerViewDataSource {
    pickerView.dataSource = dataSource
    return self
  }
  
  // MARK: - Customizing the Picker Behavior
  
  @discardableResult
  func pickerViewDelegate<T>(_ delegate: T?) -> UIPickerViewBuilder where T: UIPickerViewDelegate {
    pickerView.delegate = delegate
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIPickerView {
    return pickerView
  }
}
