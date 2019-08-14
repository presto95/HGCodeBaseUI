//
//  UIPickerView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIPickerView {
  
  // MARK: - Providing the Picker Data
  
  /// Wrapper of `dataSource` property setter.
  @discardableResult
  func dataSource<T>(_ dataSource: T?) -> Builder where T: UIPickerViewDataSource {
    base.dataSource = dataSource
    return self
  }
  
  // MARK: - Customizing the Picker Behavior
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UIPickerViewDelegate {
    base.delegate = delegate
    return self
  }
}

#endif
