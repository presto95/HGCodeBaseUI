//
//  UITableViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal final class UITableViewBuilder {
  
  private let tableView: UITableView
  
  init(style: UITableView.Style) {
    tableView = .init(frame: .zero, style: style)
  }
  
  // MARK: - Providing the Table's Data and Cells
  
  @discardableResult
  func tableViewDataSource<T>(
    _ dataSource: T?
  ) -> UITableViewBuilder where T: UITableViewDataSource {
    tableView.dataSource = dataSource
    return self
  }
  
  // MARK: - Recycling Table View Cells
  
  @discardableResult
  func prefetchDataSource<T>(
    _ dataSource: T?
  ) -> UITableViewBuilder where T: UITableViewDataSourcePrefetching {
    tableView.prefetchDataSource = dataSource
    return self
  }
  
  // MARK: - Recycling Table View Cells & Recycling Section Headers and Footers
  
  @discardableResult
  func register(_ registerView: RegisterView) -> UITableViewBuilder {
    switch registerView {
    case let .cell(registerMethod):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        tableView.register(aClass, forCellReuseIdentifier: reuseIdentifier)
      }
    case let .headerFooter(registerMethod):
      switch registerMethod {
      case let .nib(nib, reuseIdentifier):
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: reuseIdentifier)
      case let .class(aClass, reuseIdentifier):
        tableView.register(aClass, forHeaderFooterViewReuseIdentifier: reuseIdentifier)
      }
    }
    return self
  }

  // MARK: - Managing Interactions with the Table
  
  @discardableResult
  func tableViewDelegate<T>(_ delegate: T?) -> UITableViewBuilder where T: UITableViewDelegate {
    tableView.delegate = delegate
    return self
  }
  
  // MARK: - Configuring the Table's Appearance
  
  @discardableResult
  func tableSectionView(_ sectionView: SectionView) -> UITableViewBuilder {
    switch sectionView {
    case let .each(header, footer):
      tableView.tableHeaderView = header
      tableView.tableFooterView = footer
    case let .header(view):
      tableView.tableHeaderView = view
    case let .footer(view):
      tableView.tableFooterView = view
    }
    return self
  }
  
  @discardableResult
  func backgroundView(_ view: UIView?) -> UITableViewBuilder {
    tableView.backgroundView = view
    return self
  }
  
  // MARK: - Configuring Cell Height and Layout
  
  @discardableResult
  func cellLayoutMarginsFollowReadableWidth(_ flag: Bool) -> UITableViewBuilder {
    tableView.cellLayoutMarginsFollowReadableWidth = flag
    return self
  }
  
  @discardableResult
  func insetsContentViewsToSafeArea(_ flag: Bool) -> UITableViewBuilder {
    tableView.insetsContentViewsToSafeArea = flag
    return self
  }
  
  // MARK: - Configuring Cell Height and Layout & Configuring Header and Footer Heights
  
  @discardableResult
  func height(_ height: Height) -> UITableViewBuilder {
    switch height {
    case let .each(row, header, footer):
      tableView.rowHeight = row
      tableView.sectionHeaderHeight = header
      tableView.sectionFooterHeight = footer
    case let .row(value):
      tableView.rowHeight = value
    case let .sectionHeader(value):
      tableView.sectionHeaderHeight = value
    case let .sectionFooter(value):
      tableView.sectionFooterHeight = value
    case let .sectionHeaderFooter(value):
      tableView.sectionHeaderHeight = value
      tableView.sectionFooterHeight = value
    }
    return self
  }
  
  @discardableResult
  func estimatedHeight(_ height: Height) -> UITableViewBuilder {
    switch height {
    case let .each(row, header, footer):
      tableView.estimatedRowHeight = row
      tableView.estimatedSectionHeaderHeight = header
      tableView.estimatedSectionFooterHeight = footer
    case let .row(value):
      tableView.estimatedRowHeight = value
    case let .sectionHeader(value):
      tableView.estimatedSectionHeaderHeight = value
    case let .sectionFooter(value):
      tableView.estimatedSectionFooterHeight = value
    case let .sectionHeaderFooter(value):
      tableView.estimatedSectionHeaderHeight = value
      tableView.estimatedSectionFooterHeight = value
    }
    return self
  }
  
  // MARK: - Customizing the Separator Appearance
  
  @discardableResult
  func separator(_ separator: TableViewSeparator) -> UITableViewBuilder {
    switch separator {
    case let .each(style, color, effect, inset, insetReference):
      tableView.separatorStyle = style
      tableView.separatorColor = color
      tableView.separatorEffect = effect
      switch inset {
      case let .each(top, left, bottom, right):
        tableView.separatorInset = .init(top: top, left: left, bottom: bottom, right: right)
      case let .symmetric(horizontal, vertical):
        tableView.separatorInset = .init(top: vertical,
                                         left: horizontal,
                                         bottom: vertical,
                                         right: horizontal)
      case let .all(value):
        tableView.separatorInset = .init(top: value, left: value, bottom: value, right: value)
      case let .top(value):
        tableView.separatorInset = .init(top: value, left: 0, bottom: 0, right: 0)
      case let .left(value):
        tableView.separatorInset = .init(top: 0, left: value, bottom: 0, right: 0)
      case let .bottom(value):
        tableView.separatorInset = .init(top: 0, left: 0, bottom: value, right: 0)
      case let .right(value):
        tableView.separatorInset = .init(top: 0, left: 0, bottom: 0, right: value)
      case let .horizontal(value):
        tableView.separatorInset = .init(top: 0, left: value, bottom: 0, right: value)
      case let .vertical(value):
        tableView.separatorInset = .init(top: value, left: 0, bottom: value, right: 0)
      case .zero:
        tableView.separatorInset = .zero
      }
      tableView.separatorInsetReference = insetReference
    case let .style(style):
      tableView.separatorStyle = style
    case let .color(color):
      tableView.separatorColor = color
    case let .effect(effect):
      tableView.separatorEffect = effect
    case let .inset(inset):
      switch inset {
      case let .each(top, left, bottom, right):
        tableView.separatorInset = .init(top: top, left: left, bottom: bottom, right: right)
      case let .symmetric(horizontal, vertical):
        tableView.separatorInset = .init(top: vertical,
                                         left: horizontal,
                                         bottom: vertical,
                                         right: horizontal)
      case let .all(value):
        tableView.separatorInset = .init(top: value, left: value, bottom: value, right: value)
      case let .top(value):
        tableView.separatorInset = .init(top: value, left: 0, bottom: 0, right: 0)
      case let .left(value):
        tableView.separatorInset = .init(top: 0, left: value, bottom: 0, right: 0)
      case let .bottom(value):
        tableView.separatorInset = .init(top: 0, left: 0, bottom: value, right: 0)
      case let .right(value):
        tableView.separatorInset = .init(top: 0, left: 0, bottom: 0, right: value)
      case let .horizontal(value):
        tableView.separatorInset = .init(top: 0, left: value, bottom: 0, right: value)
      case let .vertical(value):
        tableView.separatorInset = .init(top: value, left: 0, bottom: value, right: 0)
      case .zero:
        tableView.separatorInset = .zero
      }
    case let .insetReference(insetReference):
      tableView.separatorInsetReference = insetReference
    }
    return self
  }
  
  // MARK: - Selecting Rows
  
  @discardableResult
  func allowsSelection(_ selection: Selection) -> UITableViewBuilder {
    switch selection {
    case let .each(single, multiple):
      tableView.allowsSelection = single
      tableView.allowsMultipleSelection = multiple
    case let .single(value):
      tableView.allowsSelection = value
    case let .multiple(value):
      tableView.allowsMultipleSelection = value
    }
    return self
  }
  
  @discardableResult
  func allowsSelectionDuringEditing(_ selection: Selection) -> UITableViewBuilder {
    switch selection {
    case let .each(single, multiple):
      tableView.allowsSelectionDuringEditing = single
      tableView.allowsMultipleSelectionDuringEditing = multiple
    case let .single(value):
      tableView.allowsSelectionDuringEditing = value
    case let .multiple(value):
      tableView.allowsMultipleSelectionDuringEditing = value
    }
    return self
  }
  
  // MARK: - Configuring the Table Index
  
  @discardableResult
  func sectionIndex(_ sectionIndex: SectionIndex) -> UITableViewBuilder {
    switch sectionIndex {
    case let .each(minimumDisplayRowCount, color, backgroundColor, trackingBackgroundColor):
      tableView.sectionIndexMinimumDisplayRowCount = minimumDisplayRowCount
      tableView.sectionIndexColor = color
      tableView.sectionIndexBackgroundColor = backgroundColor
      tableView.sectionIndexTrackingBackgroundColor = trackingBackgroundColor
    case let .minimumDisplayRowCount(value):
      tableView.sectionIndexMinimumDisplayRowCount = value
    case let .color(value):
      tableView.sectionIndexColor = value
    case let .backgroundColor(value):
      tableView.sectionIndexBackgroundColor = value
    case let .trackingBackgroundColor(value):
      tableView.sectionIndexTrackingBackgroundColor = value
    }
    return self
  }
  
  // MARK: - Managing Drag Interactions
  
  @discardableResult
  func dragDelegate<T>(_ delegate: T?) -> UITableViewBuilder where T: UITableViewDragDelegate {
    tableView.dragDelegate = delegate
    return self
  }
  
  @discardableResult
  func dragInteractionEnabled(_ flag: Bool) -> UITableViewBuilder {
    tableView.dragInteractionEnabled = flag
    return self
  }
  
  // MARK: - Managing Drop Interactions
  
  @discardableResult
  func dropDelegate<T>(_ delegate: T?) -> UITableViewBuilder where T: UITableViewDropDelegate {
    tableView.dropDelegate = delegate
    return self
  }
  
  // MARK: - Remembering the Last Focused Cell
  
  @discardableResult
  func remembersLastFocusedIndexPath(_ flag: Bool) -> UITableViewBuilder {
    tableView.remembersLastFocusedIndexPath = flag
    return self
  }
  
  // MARK: - Build
  
  func build() -> UITableView {
    return tableView
  }
}
