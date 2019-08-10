//
//  UICollectionView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UICollectionView {
  
  // MARK: - Providing the Collection View Data
  
  @discardableResult
  func dataSource<T>(_ dataSource: T?) -> Builder where T: UICollectionViewDataSource {
    base.dataSource = dataSource
    return self
  }
  
  // MARK: - Managing Collection View Interactions
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UICollectionViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Background View
  
  @discardableResult
  func backgroundView(_ view: UIView?) -> Builder {
    base.backgroundView = view
    return self
  }
  
  // MARK: - Prefetching Collection View Cells and Data
  
  @discardableResult
  func isPrefetchingEnabled(_ flag: Bool) -> Builder {
    base.isPrefetchingEnabled = flag
    return self
  }
  
  @discardableResult
  func prefetchDataSource<T>(
    _ dataSource: T?
  ) -> Builder where T: UICollectionViewDataSourcePrefetching {
    base.prefetchDataSource = dataSource
    return self
  }
  
  // MARK: - Creating Collection View Cells
  
  @discardableResult
  func register(_ registerView: CollectionViewRegisterView) -> Builder {
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
  
  // MARK: - Changing the Layout
  
  @discardableResult
  func collectionViewLayout(_ layout: UICollectionViewLayout) -> Builder {
    base.collectionViewLayout = layout
    return self
  }
  
  // MARK: - Managing Drag Interactions
  
  @discardableResult
  func dragDelegate<T>(
    _ delegate: T?
    ) -> Builder where T: UICollectionViewDragDelegate {
    base.dragDelegate = delegate
    return self
  }
  
  @discardableResult
  func dragInteractionEnabled(_ flag: Bool) -> Builder {
    base.dragInteractionEnabled = flag
    return self
  }
  
  // MARK: - Managing Drop Interactions
  
  @discardableResult
  func dropDelegate<T>(_ delegate: T?) -> Builder where T: UICollectionViewDropDelegate {
    base.dropDelegate = delegate
    return self
  }
  
  @discardableResult
  func reorderingCadence(_ cadence: UICollectionView.ReorderingCadence) -> Builder {
    base.reorderingCadence = cadence
    return self
  }
  
  // MARK: - Managing the Selection
  
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
  
  // MARK: - Managing Focus
  
  @discardableResult
  func remembersLastFocusedIndexPath(_ flag: Bool) -> Builder {
    base.remembersLastFocusedIndexPath = flag
    return self
  }
}

#endif
