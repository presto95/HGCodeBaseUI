//
//  UIPickerView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UIPickerView {
  
  // MARK: - Providing the Picker Data
  
  @discardableResult
  func dataSource<T>(_ dataSource: T?) -> Builder where T: UIPickerViewDataSource {
    base.dataSource = dataSource
    return self
  }
  
  // MARK: - Customizing the Picker Behavior
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UIPickerViewDelegate {
    base.delegate = delegate
    return self
  }
}

#endif
