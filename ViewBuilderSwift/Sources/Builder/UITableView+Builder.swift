//
//  UITableView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITableView {
  
  // MARK: - Helper
  
  /// Helper associated with **cell & view register** setting feature.
  ///
  /// - `cell` case for `register(_:forCellReuseIdentifier:)` method.
  /// - `headerFooter` case for `register(_:forHeaderFooterViewReuseIdentifier:)` method.
  @discardableResult
  func register(_ registerView: TableViewBuilder.RegisterView) -> Builder {
    switch registerView {
    case let .cell(registerMethod):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        base.register(nib, forCellReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        base.register(aClass, forCellReuseIdentifier: reuseIdentifier)
      }
    case let .headerFooter(registerMethod):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        base.register(nib, forHeaderFooterViewReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        base.register(aClass, forHeaderFooterViewReuseIdentifier: reuseIdentifier)
      }
    }
    return self
  }
  
  /// Helper associated with **section header & footer view** setting feature.
  ///
  /// - `header` case for `tableHeaderView` property setter.
  /// - `footer` case for `tableFooterView` property setter.
  @discardableResult
  func tableSectionView(_ sectionView: TableViewBuilder.SectionView) -> Builder {
    switch sectionView {
    case let .each(header, footer):
      base.tableHeaderView = header
      base.tableFooterView = footer
    case let .header(header):
      base.tableHeaderView = header
    case let .footer(footer):
      base.tableFooterView = footer
    }
    return self
  }
  
  /// Helper associated with **height** setting feature.
  ///
  /// - `row` case for `rowHeight` and `estimatedRowHeight` property setter.
  /// - `sectionHeader` case for
  ///   `sectionHeaderHeight` and `estimatedSectionHeaderHeight` property setter.
  /// - `sectionFooter` case for
  ///   `sectionFooterHeight` and `estimatedSectionFooterHeight` property setter.
  /// - `sectionHeaderFooter` case for
  ///   `sectionHeaderHeight` / `estimatedSectionHeaderHeight` and
  ///   `sectionFooterHeight` / `estimatedSectionFooterHeight` property setter.
  @discardableResult
  func height(_ height: TableViewBuilder.Height) -> Builder {
    switch height {
    case let .each(row, sectionHeader, sectionFooter):
      switch row {
      case let .plain(plain):
        base.rowHeight = plain
      case let .estimated(estimated):
        base.estimatedRowHeight = estimated
      }
      switch sectionHeader {
      case let .plain(plain):
        base.sectionHeaderHeight = plain
      case let .estimated(estimated):
        base.estimatedSectionHeaderHeight = estimated
      }
      switch sectionFooter {
      case let .plain(plain):
        base.sectionFooterHeight = plain
      case let .estimated(estimated):
        base.estimatedSectionFooterHeight = estimated
      }
    case let .row(row):
      switch row {
      case let .plain(plain):
        base.rowHeight = plain
      case let .estimated(estimated):
        base.estimatedRowHeight = estimated
      }
    case let .sectionHeader(sectionHeader):
      switch sectionHeader {
      case let .plain(plain):
        base.sectionHeaderHeight = plain
      case let .estimated(estimated):
        base.estimatedSectionHeaderHeight = estimated
      }
    case let .sectionFooter(sectionFooter):
      switch sectionFooter {
      case let .plain(plain):
        base.sectionFooterHeight = plain
      case let .estimated(estimated):
        base.estimatedSectionFooterHeight = estimated
      }
    case let .sectionHeaderFooter(sectionHeaderFooter):
      switch sectionHeaderFooter {
      case let .plain(plain):
        base.sectionHeaderHeight = plain
        base.sectionFooterHeight = plain
      case let .estimated(estimated):
        base.estimatedSectionHeaderHeight = estimated
        base.estimatedSectionFooterHeight = estimated
      }
    }
    return self
  }
  
  /// Helper associated with **separator** setting feature.
  ///
  /// - `style` case for `separatorStyle` property setter.
  /// - `color` case for `separatorColor` property setter.
  /// - `effect` case for `separatorEffect` property setter.
  /// - `inset` case for `separatorInset` property setter.
  /// - `insetReference` for `separatorInsetReference` property setter.
  @discardableResult
  func separator(_ separator: TableViewBuilder.Separator) -> Builder {
    switch separator {
    case let .each(style, color, effect, inset, insetReference):
      base.separatorStyle = style
      base.separatorColor = color
      base.separatorEffect = effect
      base.separatorInset = inset.uiEdgeInsets
      base.separatorInsetReference = insetReference
    case let .style(style):
      base.separatorStyle = style
    case let .color(color):
      base.separatorColor = color
    case let .effect(effect):
      base.separatorEffect = effect
    case let .inset(inset):
      base.separatorInset = inset.uiEdgeInsets
    case let .insetReference(insetReference):
      base.separatorInsetReference = insetReference
    }
    return self
  }
  
  /// Helper associated with **allows selection** setting feature.
  ///
  /// - `single` case for `allowsSelection` property setter.
  /// - `multiple` case for `allowsMultipleSelection` property setter.
  @discardableResult
  func allowsSelection(_ selection: Selection) -> Builder {
    switch selection {
    case let .each(single, multiple):
      base.allowsSelection = single
      base.allowsMultipleSelection = multiple
    case let .single(single):
      base.allowsSelection = single
    case let .multiple(multiple):
      base.allowsMultipleSelection = multiple
    }
    return self
  }
  
  /// Helper associated with **allows selection during editing** setting feature.
  ///
  /// - `single` case for `allowsSelectionDuringEditing` property setter.
  /// - `multiple` case for `allowsMultipleSelectionDuringEditing` property setter.
  @discardableResult
  func allowsSelectionDuringEditing(_ selection: Selection) -> Builder {
    switch selection {
    case let .each(single, multiple):
      base.allowsSelectionDuringEditing = single
      base.allowsMultipleSelectionDuringEditing = multiple
    case let .single(single):
      base.allowsSelectionDuringEditing = single
    case let .multiple(multiple):
      base.allowsMultipleSelectionDuringEditing = multiple
    }
    return self
  }

  /// Helper associated with **section index** setting feature.
  ///
  /// - `minimumDisplayRowCount` case for `sectionIndexMinimumDisplayRowCount` property setter.
  /// - `color` case for `sectionIndexColor` property setter.
  /// - `backgroundColor` case for `sectionIndexBackgroundColor` property setter.
  /// - `trackingBackgroundColor` case for `sectionIndexTrackingBackgroundColor` property setter.
  @discardableResult
  func sectionIndex(_ sectionIndex: TableViewBuilder.SectionIndex) -> Builder {
    switch sectionIndex {
    case let .each(minimumDisplayRowCount, color, backgroundColor, trackingBackgroundColor):
      base.sectionIndexMinimumDisplayRowCount = minimumDisplayRowCount
      base.sectionIndexColor = color
      base.sectionIndexBackgroundColor = backgroundColor
      base.sectionIndexTrackingBackgroundColor = trackingBackgroundColor
    case let .minimumDisplayRowCount(value):
      base.sectionIndexMinimumDisplayRowCount = value
    case let .color(value):
      base.sectionIndexColor = value
    case let .backgroundColor(value):
      base.sectionIndexBackgroundColor = value
    case let .trackingBackgroundColor(value):
      base.sectionIndexTrackingBackgroundColor = value
    }
    return self
  }

  // MARK: - Providing the Table's Data and Cells
  
  /// Wrapper of `dataSource` property setter.
  @discardableResult
  func dataSource<T>(_ dataSource: T?) -> Builder where T: UITableViewDataSource {
    base.dataSource = dataSource
    return self
  }
  
  /// Wrapper of `prefetchDataSource` property setter.
  @discardableResult
  func prefetchDataSource<T>(
    _ dataSource: T?
  ) -> Builder where T: UITableViewDataSourcePrefetching {
    base.prefetchDataSource = dataSource
    return self
  }
  
  // MARK: - Recycling Table View Cells
  
  /// Wrapper of `register(_:forCellReuseIdentifier:)` method.
  @discardableResult
  func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> Builder {
    base.register(nib, forCellReuseIdentifier: identifier)
    return self
  }
  
  /// Wrapper of `reigster(_:forCellReuseIdentifier:)` method.
  @discardableResult
  func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> Builder {
    base.register(cellClass, forCellReuseIdentifier: identifier)
    return self
  }
  
  // MARK: - Recycling Section Headers and Footers
  
  /// Wrapper of `register(_:forHeaderFooterViewReuseIdentifier:)` method.
  @discardableResult
  func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> Builder {
    base.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
    return self
  }
  
  /// Wrapper of `register(_:forHeaderFooterViewReuseIdentifier:)` method.
  @discardableResult
  func register(_ viewClass: AnyClass?,
                forHeaderFooterViewReuseIdentifier identifier: String) -> Builder {
    base.register(viewClass, forHeaderFooterViewReuseIdentifier: identifier)
    return self
  }
  
  // MARK: - Managing Interactions with the Table
  
  /// Wrapper of `delegate` property setter.
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UITableViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Table's Appearance
  
  /// Wrapper of `tableHeaderView` property setter.
  @discardableResult
  func tableHeaderView(_ view: UIView?) -> Builder {
    base.tableHeaderView = view
    return self
  }
  
  /// Wrapper of `tableFooterView` property setter.
  @discardableResult
  func tableFooterView(_ view: UIView?) -> Builder {
    base.tableFooterView = view
    return self
  }
  
  /// Wrapper of `backgroundView` property setter.
  @discardableResult
  func backgroundView(_ view: UIView?) -> Builder {
    base.backgroundView = view
    return self
  }
  
  // MARK: - Configuring Cell Height and Layout
  
  /// Wrapper of `rowHeight` property setter.
  @discardableResult
  func rowHeight(_ height: CGFloat) -> Builder {
    base.rowHeight = height
    return self
  }
  
  /// Wrapper of `estimatedRowHeight` property setter.
  @discardableResult
  func estimatedRowHeight(_ height: CGFloat) -> Builder {
    base.estimatedRowHeight = height
    return self
  }
  
  /// Wrapper of `cellLayoutMarginsFollowReadableWidth` property setter.
  @discardableResult
  func cellLayoutMarginsFollowReadableWidth(_ flag: Bool) -> Builder {
    base.cellLayoutMarginsFollowReadableWidth = flag
    return self
  }
  
  /// Wrapper of `insetsContentViewsToSafeArea` property setter.
  @discardableResult
  func insetsContentViewsToSafeArea(_ flag: Bool) -> Builder {
    base.insetsContentViewsToSafeArea = flag
    return self
  }
  
  // MARK: - Configuring Header and Footer Heights
  
  /// Wrapper of `sectionHeaderHeight` property setter.
  @discardableResult
  func sectionHeaderHeight(_ height: CGFloat) -> Builder {
    base.sectionHeaderHeight = height
    return self
  }
  
  /// Wrapper of `sectionFooterHeight` property setter.
  @discardableResult
  func sectionFooterHeight(_ height: CGFloat) -> Builder {
    base.sectionFooterHeight = height
    return self
  }
  
  /// Wrapper of `estimatedSectionHeaderHeight` property setter.
  @discardableResult
  func estimatedSectionHeaderHeight(_ height: CGFloat) -> Builder {
    base.estimatedSectionHeaderHeight = height
    return self
  }
  
  /// Wrapper of `estimatedSectionFooterHeight` property setter.
  @discardableResult
  func estimatedSectionFooterHeight(_ height: CGFloat) -> Builder {
    base.estimatedSectionFooterHeight = height
    return self
  }
  
  // MARK: - Customizing the Separator Appearance
  
  /// Wrapper of `separatorStyle` property setter.
  @discardableResult
  func separatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Builder {
    base.separatorStyle = style
    return self
  }
  
  /// Wrapper of `separatorColor` property setter.
  @discardableResult
  func separatorColor(_ color: UIColor?) -> Builder {
    base.separatorColor = color
    return self
  }
  
  /// Wrapper of `separatorEffect` property setter.
  @discardableResult
  func separatorEffect(_ effect: UIVisualEffect?) -> Builder {
    base.separatorEffect = effect
    return self
  }
  
  /// Wrapper of `separatorInset` property setter.
  @discardableResult
  func separatorInset(_ inset: UIEdgeInsets) -> Builder {
    base.separatorInset = inset
    return self
  }
  
  /// Wrapper of `separatorInsetReference` property setter.
  @discardableResult
  func separatorInsetReference(_ reference: UITableView.SeparatorInsetReference) -> Builder {
    base.separatorInsetReference = reference
    return self
  }
  
  // MARK: - Selecting Rows
  
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
  
  /// Wrapper of `allowsSelectionDuringEditing` property setter.
  @discardableResult
  func allowsSelectionDuringEditing(_ flag: Bool) -> Builder {
    base.allowsSelectionDuringEditing = flag
    return self
  }
  
  /// Wrapper of `allowsMultipleSelectionDuringEditing` property setter.
  @discardableResult
  func allowsMultipleSelectionDuringEditing(_ flag: Bool) -> Builder {
    base.allowsMultipleSelectionDuringEditing = flag
    return self
  }
  
  // MARK: - Configuring the Table Index
  
  /// Wrapper of `sectionIndexMinimumDisplayRowCount` property setter.
  @discardableResult
  func sectionIndexMinimumDisplayRowCount(_ count: Int) -> Builder {
    base.sectionIndexMinimumDisplayRowCount = count
    return self
  }
  
  /// Wrapper of `sectionIndexColor` propery setter.
  @discardableResult
  func sectionIndexColor(_ color: UIColor?) -> Builder {
    base.sectionIndexColor = color
    return self
  }
  
  /// Wrapper of `sectionIndexBackgroundColor` propery setter.
  @discardableResult
  func sectionIndexBackgroundColor(_ color: UIColor?) -> Builder {
    base.sectionIndexBackgroundColor = color
    return self
  }
  
  /// Wrapper of `sectionIndexTrackingBackgroundColor` property setter.
  @discardableResult
  func sectionIndexTrackingBackgroundColor(_ color: UIColor?) -> Builder {
    base.sectionIndexTrackingBackgroundColor = color
    return self
  }
  
  // MARK: - Managing Drag Interactions
  
  /// Wrapper of `dragDelegate` property setter.
  @discardableResult
  func dragDelegate<T>(_ delegate: T?) -> Builder where T: UITableViewDragDelegate {
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
  func dropDelegate<T>(_ delegate: T?) -> Builder where T: UITableViewDropDelegate {
    base.dropDelegate = delegate
    return self
  }
  
  // MARK: - Putting the Table into Edit Mode
  
  /// Wrapper of `setEditing(_:animated:)` method.
  @discardableResult
  func isEditing(_ flag: Bool, animated: Bool) -> Builder {
    base.setEditing(flag, animated: animated)
    return self
  }
  
  /// Wrapper of `isEditing` property setter.
  @discardableResult
  func isEditing(_ flag: Bool) -> Builder {
    base.isEditing = flag
    return self
  }
  
  // MARK: - Remembering the Last Focused Cell
  
  /// Wrapper of `remembersLastFocusedIndexPath` property setter.
  @discardableResult
  func remembersLastFocusedIndexPath(_ flag: Bool) -> Builder {
    base.remembersLastFocusedIndexPath = flag
    return self
  }
}

#endif
