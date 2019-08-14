//
//  UICollectionViewCell+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UICollectionViewCell {
  
  // MARK: - Helper
  
  /// Helper associated with **background view** setting feature.
  ///
  /// - `plain` case for `backgroundView` property setter.
  /// - `selected` case for `selectedBackgroundView` property setter.
  @discardableResult
  func backgroundView(_ view: CollectionViewCellBuilder.BackgroundView) -> Builder {
    switch view {
    case let .each(plain, selected):
      base.backgroundView = plain
      base.selectedBackgroundView = selected
    case let .plain(plain):
      base.backgroundView = plain
    case let .selected(selected):
      base.selectedBackgroundView = selected
    }
    return self
  }
  
  // MARK: - Accessing the Cell's Views
  
  /// Wrapper of `backgroundView` property setter.
  @discardableResult
  func backgroundView(_ view: UIView?) -> Builder {
    base.backgroundView = view
    return self
  }
  
  /// Wrapper of `selectedBackgroundView` property setter.
  @discardableResult
  func selectedBackgroundView(_ view: UIView?) -> Builder {
    base.selectedBackgroundView = view
    return self
  }
  
  // MARK: - Managing the Cell's State
  
  /// Wrapper of `isSelected` property setter.
  @discardableResult
  func isSelected(_ flag: Bool) -> Builder {
    base.isSelected = flag
    return self
  }
  
  /// Wrapper of `isHighlighted` property setter.
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
}

#endif
