//
//  UICollectionViewCell+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UICollectionViewCell {
  
  // MARK: - Accessing the Cell's Views
  
  @discardableResult
  func backgroundView(_ view: CollectionViewCellBuilder.BackgroundView) -> Builder {
    switch view {
    case let .each(normal, selected):
      base.backgroundView = normal
      base.selectedBackgroundView = selected
    case let .normal(view):
      base.backgroundView = view
    case let .selected(view):
      base.selectedBackgroundView = view
    }
    return self
  }
  
  // MARK: - Managing the Cell's State
  
  @discardableResult
  func isSelected(_ flag: Bool) -> Builder {
    base.isSelected = flag
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
}

#endif
