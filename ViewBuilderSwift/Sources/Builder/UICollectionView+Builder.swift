//
//  UICollectionView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UICollectionView {
  
  // MARK: - Helper
  
  /// Helper associated with **cell & view register** setting feature.
  ///
  /// - `cell` case for `register(_:forCellWithReuseIdentifier:)` method.
  /// - `supplementaryView` case for
  ///   `register(_:forSupplementaryViewOfKind:withReuseIdentifier:)` method.
  @discardableResult
  func register(_ registerView: CollectionViewBuilder.RegisterView) -> Builder {
    switch registerView {
    case let .cell(registerMethod):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        base.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        base.register(aClass, forCellWithReuseIdentifier: reuseIdentifier)
      }
    case let .supplementaryView(registerMethod, kind):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        base.register(nib,
                      forSupplementaryViewOfKind: kind,
                      withReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        base.register(aClass,
                      forSupplementaryViewOfKind: kind,
                      withReuseIdentifier: reuseIdentifier)
      }
    }
    return self
  }
  
  /// Helper associated with **selection allowing*** setting feature.
  ///
  /// - `single` case for `allowsSelection` property setter.
  /// - `multiple` case for `allowsMultipleSelection` property setter.
  @discardableResult
  func allowsSelection(_ selection: Selection) -> Builder {
    switch selection {
    case let .each(single, multiple):
      base.allowsSelection = single
      base.allowsMultipleSelection = multiple
    case let .single(value):
      base.allowsSelection = value
    case let .multiple(value):
      base.allowsMultipleSelection = value
    }
    return self
  }

  // MARK: - Providing the Collection View Data
  
  /// Wrapper of `dataSource` property setter.
  @discardableResult
  func dataSource<T>(_ dataSource: T?) -> Builder where T: UICollectionViewDataSource {
    base.dataSource = dataSource
    return self
  }
  
  // MARK: - Managing Collection View Interactions
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UICollectionViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Background View
  
  /// Wrapper of `backgroundView` property setter.
  @discardableResult
  func backgroundView(_ view: UIView?) -> Builder {
    base.backgroundView = view
    return self
  }
  
  // MARK: - Prefetching Collection View Cells and Data
  
  /// Wrapper of `isPrefetchingEnabled` property setter.
  @discardableResult
  func isPrefetchingEnabled(_ flag: Bool) -> Builder {
    base.isPrefetchingEnabled = flag
    return self
  }
  
  /// Wrapper of `prefetchDataSource` property setter.
  @discardableResult
  func prefetchDataSource<T>(
    _ dataSource: T?
  ) -> Builder where T: UICollectionViewDataSourcePrefetching {
    base.prefetchDataSource = dataSource
    return self
  }
  
  // MARK: - Creating Collection View Cells
  
  /// Wrapper of `register(_:forCellWithReuseIdentifier` method.
  @discardableResult
  func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) -> Builder {
    base.register(cellClass, forCellWithReuseIdentifier: identifier)
    return self
  }
  
  /// Wrapper of `register(_:forCellWithReuseIdentifier` method.
  @discardableResult
  func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> Builder {
    base.register(nib, forCellWithReuseIdentifier: identifier)
    return self
  }
  
  /// Wrapper of `register(_:forSupplementaryViewOfKind:withReuseIdentifier:)` method.
  @discardableResult
  func register(_ viewClass: AnyClass?,
                forSupplementaryViewOfKind elementKind: String,
                withReuseIdentifier identifier: String) -> Builder {
    base.register(viewClass,
                  forSupplementaryViewOfKind: elementKind,
                  withReuseIdentifier: identifier)
    return self
  }
  
  /// Wrapper of `register(_:forSupplementaryViewOfKind:withReuseIdentifier:)` method.
  @discardableResult
  func register(_ nib: UINib?,
                forSupplementaryViewOfKind kind: String,
                withReuseIdentifier identifier: String) -> Builder {
    base.register(nib,
                  forSupplementaryViewOfKind: kind,
                  withReuseIdentifier: identifier)
    return self
  }
  
  // MARK: - Changing the Layout
  
  /// Wrapper of `setCollectionViewLayout(_:animated:completion:)` method.
  @discardableResult
  func collectionViewLayout(_ layout: UICollectionViewLayout,
                            animated: Bool,
                            completion: ((Bool) -> Void)? = nil) -> Builder {
    base.setCollectionViewLayout(layout, animated: animated, completion: completion)
    return self
  }
  
  // MARK: - Managing Drag Interactions
  
  /// Wrapper of `dragDelegate` property setter.
  @discardableResult
  func dragDelegate<T>(
    _ delegate: T?
    ) -> Builder where T: UICollectionViewDragDelegate {
    base.dragDelegate = delegate
    return self
  }
  
  /// Wrapper of `dragInteractionEnabled` property setter.
  @discardableResult
  func dragInteractionEnabled(_ flag: Bool) -> Builder {
    base.dragInteractionEnabled = flag
    return self
  }
  
  // MARK: - Managing Drop Interactions
  
  /// Wrapper of `dropDelegate` property setter.
  @discardableResult
  func dropDelegate<T>(_ delegate: T?) -> Builder where T: UICollectionViewDropDelegate {
    base.dropDelegate = delegate
    return self
  }
  
  /// Wrapper of `reorderingCadence` property setter.
  @discardableResult
  func reorderingCadence(_ cadence: UICollectionView.ReorderingCadence) -> Builder {
    base.reorderingCadence = cadence
    return self
  }
  
  // MARK: - Managing the Selection
  
  /// Wrapper of `allowsSelection` property setter.
  @discardableResult
  func allowsSelection(_ flag: Bool) -> Builder {
    base.allowsSelection = flag
    return self
  }
  
  /// Wrapper of `allowsMultipleSelection` property setter.
  @discardableResult
  func allowsMultipleSelection(_ flag: Bool) -> Builder {
    base.allowsMultipleSelection = flag
    return self
  }
  
  // MARK: - Managing Focus
  
  /// Wrapper of `remembersLastFocusedIndexPath` property setter.
  @discardableResult
  func remembersLastFocusedIndexPath(_ flag: Bool) -> Builder {
    base.remembersLastFocusedIndexPath = flag
    return self
  }
}

#endif
