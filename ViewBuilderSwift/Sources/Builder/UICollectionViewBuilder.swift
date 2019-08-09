//
//  UICollectionViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UICollectionView {
  
  @discardableResult
  func builder() -> UICollectionViewBuilder {
    return .init(collectionView: self)
  }
}

public final class UICollectionViewBuilder {
  
  private let collectionView: UICollectionView
  
  init() {
    collectionView = .init()
  }
  
  init(collectionView: UICollectionView) {
    self.collectionView = collectionView
  }
  
  // MARK: - Providing the Collection View Data
  
  @discardableResult
  func collectionViewDataSource<T>(
    _ dataSource: T?
  ) -> UICollectionViewBuilder where T: UICollectionViewDataSource {
    collectionView.dataSource = dataSource
    return self
  }
  
  // MARK: - Managing Collection View Interactions
  
  @discardableResult
  func collectionViewDelegate<T>(
    _ delegate: T?
  ) -> UICollectionViewBuilder where T: UICollectionViewDelegate {
    collectionView.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Background View
  
  @discardableResult
  func backgroundView(_ view: UIView?) -> UICollectionViewBuilder {
    collectionView.backgroundView = view
    return self
  }
  
  // MARK: - Prefetching Collection View Cells and Data
  
  @discardableResult
  func isPrefetchingEnabled(_ flag: Bool) -> UICollectionViewBuilder {
    collectionView.isPrefetchingEnabled = flag
    return self
  }
  
  @discardableResult
  func prefetchDataSource<T>(
    _ dataSource: T?
  ) -> UICollectionViewBuilder where T: UICollectionViewDataSourcePrefetching {
    collectionView.prefetchDataSource = dataSource
    return self
  }
  
  // MARK: - Creating Collection View Cells
  
  @discardableResult
  func register(_ registerView: CollectionViewRegisterView) -> UICollectionViewBuilder {
    switch registerView {
    case let .cell(registerMethod):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        collectionView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        collectionView.register(aClass, forCellWithReuseIdentifier: reuseIdentifier)
      }
    case let .supplementaryView(registerMethod, kind):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        collectionView.register(nib,
                                forSupplementaryViewOfKind: kind,
                                withReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        collectionView.register(aClass,
                                forSupplementaryViewOfKind: kind,
                                withReuseIdentifier: reuseIdentifier)
      }
    }
    return self
  }
  
  // MARK: - Changing the Layout
  
  @discardableResult
  func collectionViewLayout(_ layout: UICollectionViewLayout) -> UICollectionViewBuilder {
    collectionView.collectionViewLayout = layout
    return self
  }
  
  // MARK: - Managing Drag Interactions
  
  @discardableResult
  func dragDelegate<T>(
    _ delegate: T?
  ) -> UICollectionViewBuilder where T: UICollectionViewDragDelegate {
    collectionView.dragDelegate = delegate
    return self
  }
  
  @discardableResult
  func dragInteractionEnabled(_ flag: Bool) -> UICollectionViewBuilder {
    collectionView.dragInteractionEnabled = flag
    return self
  }
  
  // MARK: - Managing Drop Interactions
  
  @discardableResult
  func dropDelegate<T>(
    _ delegate: T?
  ) -> UICollectionViewBuilder where T: UICollectionViewDropDelegate {
    collectionView.dropDelegate = delegate
    return self
  }
  
  @discardableResult
  func reorderingCadence(
    _ cadence: UICollectionView.ReorderingCadence
  ) -> UICollectionViewBuilder {
    collectionView.reorderingCadence = cadence
    return self
  }
  
  // MARK: - Managing the Selection
  
  @discardableResult
  func allowsSelection(_ selection: Selection) -> UICollectionViewBuilder {
    switch selection {
    case let .each(single, multiple):
      collectionView.allowsSelection = single
      collectionView.allowsMultipleSelection = multiple
    case let .single(value):
      collectionView.allowsSelection = value
    case let .multiple(value):
      collectionView.allowsMultipleSelection = value
    }
    return self
  }
  
  // MARK: - Managing Focus
  
  @discardableResult
  func remembersLastFocusedIndexPath(_ flag: Bool) -> UICollectionViewBuilder {
    collectionView.remembersLastFocusedIndexPath = flag
    return self
  }
  
  // MARK: - Build
  
  func build() -> UICollectionView {
    return collectionView
  }
}
