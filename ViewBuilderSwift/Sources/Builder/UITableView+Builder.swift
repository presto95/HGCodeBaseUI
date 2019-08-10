//
//  UITableView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITableView {
  
  // MARK: - Providing the Table's Data and Cells
  
  @discardableResult
  func dataSource<T>(_ dataSource: T?) -> Builder where T: UITableViewDataSource {
    base.dataSource = dataSource
    return self
  }
  
  // MARK: - Recycling Table View Cells
  
  @discardableResult
  func prefetchDataSource<T>(
    _ dataSource: T?
  ) -> Builder where T: UITableViewDataSourcePrefetching {
    base.prefetchDataSource = dataSource
    return self
  }
  
  // MARK: - Recycling Table View Cells & Recycling Section Headers and Footers
  
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
  
  // MARK: - Managing Interactions with the Table
  
  @discardableResult
  func delegate<T>(_ delegate: T?) -> Builder where T: UITableViewDelegate {
    base.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Table's Appearance
  
  @discardableResult
  func tableSectionView(_ sectionView: TableViewBuilder.SectionView) -> Builder {
    switch sectionView {
    case let .each(header, footer):
      base.tableHeaderView = header
      base.tableFooterView = footer
    case let .header(view):
      base.tableHeaderView = view
    case let .footer(view):
      base.tableFooterView = view
    }
    return self
  }
  
  @discardableResult
  func backgroundView(_ view: UIView?) -> Builder {
    base.backgroundView = view
    return self
  }
  
  // MARK: - Configuring Cell Height and Layout
  
  @discardableResult
  func cellLayoutMarginsFollowReadableWidth(_ flag: Bool) -> Builder {
    base.cellLayoutMarginsFollowReadableWidth = flag
    return self
  }
  
  @discardableResult
  func insetsContentViewsToSafeArea(_ flag: Bool) -> Builder {
    base.insetsContentViewsToSafeArea = flag
    return self
  }
  
  // MARK: - Configuring Cell Height and Layout & Configuring Header and Footer Heights
  
  @discardableResult
  func height(_ height: TableViewBuilder.Height) -> Builder {
    switch height {
    case let .each(row, header, footer):
      base.rowHeight = row
      base.sectionHeaderHeight = header
      base.sectionFooterHeight = footer
    case let .row(value):
      base.rowHeight = value
    case let .sectionHeader(value):
      base.sectionHeaderHeight = value
    case let .sectionFooter(value):
      base.sectionFooterHeight = value
    case let .sectionHeaderFooter(value):
      base.sectionHeaderHeight = value
      base.sectionFooterHeight = value
    }
    return self
  }
  
  @discardableResult
  func estimatedHeight(_ height: TableViewBuilder.Height) -> Builder {
    switch height {
    case let .each(row, header, footer):
      base.estimatedRowHeight = row
      base.estimatedSectionHeaderHeight = header
      base.estimatedSectionFooterHeight = footer
    case let .row(value):
      base.estimatedRowHeight = value
    case let .sectionHeader(value):
      base.estimatedSectionHeaderHeight = value
    case let .sectionFooter(value):
      base.estimatedSectionFooterHeight = value
    case let .sectionHeaderFooter(value):
      base.estimatedSectionHeaderHeight = value
      base.estimatedSectionFooterHeight = value
    }
    return self
  }
  
  // MARK: - Customizing the Separator Appearance
  
  @discardableResult
  func separator(_ separator: TableViewBuilder.Separator) -> Builder {
    switch separator {
    case let .each(style, color, effect, inset, insetReference):
      base.separatorStyle = style
      base.separatorColor = color
      base.separatorEffect = effect
      switch inset {
      case let .each(top, left, bottom, right):
        base.separatorInset = .init(top: top, left: left, bottom: bottom, right: right)
      case let .symmetric(horizontal, vertical):
        base.separatorInset = .init(top: vertical,
                                         left: horizontal,
                                         bottom: vertical,
                                         right: horizontal)
      case let .all(value):
        base.separatorInset = .init(top: value, left: value, bottom: value, right: value)
      case let .top(value):
        base.separatorInset = .init(top: value, left: 0, bottom: 0, right: 0)
      case let .left(value):
        base.separatorInset = .init(top: 0, left: value, bottom: 0, right: 0)
      case let .bottom(value):
        base.separatorInset = .init(top: 0, left: 0, bottom: value, right: 0)
      case let .right(value):
        base.separatorInset = .init(top: 0, left: 0, bottom: 0, right: value)
      case let .horizontal(value):
        base.separatorInset = .init(top: 0, left: value, bottom: 0, right: value)
      case let .vertical(value):
        base.separatorInset = .init(top: value, left: 0, bottom: value, right: 0)
      case .zero:
        base.separatorInset = .zero
      }
      base.separatorInsetReference = insetReference
    case let .style(style):
      base.separatorStyle = style
    case let .color(color):
      base.separatorColor = color
    case let .effect(effect):
      base.separatorEffect = effect
    case let .inset(inset):
      switch inset {
      case let .each(top, left, bottom, right):
        base.separatorInset = .init(top: top, left: left, bottom: bottom, right: right)
      case let .symmetric(horizontal, vertical):
        base.separatorInset = .init(top: vertical,
                                         left: horizontal,
                                         bottom: vertical,
                                         right: horizontal)
      case let .all(value):
        base.separatorInset = .init(top: value, left: value, bottom: value, right: value)
      case let .top(value):
        base.separatorInset = .init(top: value, left: 0, bottom: 0, right: 0)
      case let .left(value):
        base.separatorInset = .init(top: 0, left: value, bottom: 0, right: 0)
      case let .bottom(value):
        base.separatorInset = .init(top: 0, left: 0, bottom: value, right: 0)
      case let .right(value):
        base.separatorInset = .init(top: 0, left: 0, bottom: 0, right: value)
      case let .horizontal(value):
        base.separatorInset = .init(top: 0, left: value, bottom: 0, right: value)
      case let .vertical(value):
        base.separatorInset = .init(top: value, left: 0, bottom: value, right: 0)
      case .zero:
        base.separatorInset = .zero
      }
    case let .insetReference(insetReference):
      base.separatorInsetReference = insetReference
    }
    return self
  }
  
  // MARK: - Selecting Rows
  
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
  
  @discardableResult
  func allowsSelectionDuringEditing(_ selection: Selection) -> Builder {
    switch selection {
    case let .each(single, multiple):
      base.allowsSelectionDuringEditing = single
      base.allowsMultipleSelectionDuringEditing = multiple
    case let .single(value):
      base.allowsSelectionDuringEditing = value
    case let .multiple(value):
      base.allowsMultipleSelectionDuringEditing = value
    }
    return self
  }
  
  // MARK: - Configuring the Table Index
  
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
  
  // MARK: - Managing Drag Interactions
  
  @discardableResult
  func dragDelegate<T>(_ delegate: T?) -> Builder where T: UITableViewDragDelegate {
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
  func dropDelegate<T>(_ delegate: T?) -> Builder where T: UITableViewDropDelegate {
    base.dropDelegate = delegate
    return self
  }
  
  // MARK: - Remembering the Last Focused Cell
  
  @discardableResult
  func remembersLastFocusedIndexPath(_ flag: Bool) -> Builder {
    base.remembersLastFocusedIndexPath = flag
    return self
  }
}

#endif
