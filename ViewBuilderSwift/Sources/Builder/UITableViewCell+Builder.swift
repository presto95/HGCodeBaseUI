//
//  UITableViewCell+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UITableViewCell {
  
  // MARK: - Accessing Views of the Cell Object
  
  @discardableResult
  func backgroundView(_ view: UIView?) -> Builder {
    base.backgroundView = view
    return self
  }
  
  @discardableResult
  func backgroundView(_ view: TableViewCellBackgroundView) -> Builder {
    switch view {
    case let .each(normal, selected, multipleSelection):
      base.backgroundView = normal
      base.selectedBackgroundView = selected
      base.multipleSelectionBackgroundView = multipleSelection
    case let .normal(view):
      base.backgroundView = view
    case let .selected(view):
      base.selectedBackgroundView = view
    case let .multipleSelection(view):
      base.multipleSelectionBackgroundView = view
    }
    return self
  }
  
  // MARK: - Managing Accessory Views
  
  @discardableResult
  func accessory(_ accessory: TableViewCellAccessory) -> Builder {
    switch accessory {
    case let .each(type, view, editingType, editingView):
      base.accessoryType = type
      base.accessoryView = view
      base.editingAccessoryType = editingType
      base.editingAccessoryView = editingView
    case let .normal(type, view):
      base.accessoryType = type
      base.accessoryView = view
    case let .editing(type, view):
      base.editingAccessoryType = type
      base.editingAccessoryView = view
    case let .type(type):
      base.accessoryType = type
    case let .view(view):
      base.accessoryView = view
    case let .editingType(type):
      base.editingAccessoryType = type
    case let .editingView(view):
      base.editingAccessoryView = view
    }
    return self
  }
  
  // MARK: - Managing Cell Selection and Highlighting
  
  @discardableResult
  func selectionStyle(_ style: UITableViewCell.SelectionStyle) -> Builder {
    base.selectionStyle = style
    return self
  }
  
  @discardableResult
  func isSelected(_ flag: Bool, animated: Bool = false) -> Builder {
    base.setSelected(flag, animated: animated)
    return self
  }
  
  @discardableResult
  func isHighlighted(_ flag: Bool, animated: Bool = false) -> Builder {
    base.setHighlighted(flag, animated: animated)
    return self
  }
  
  // MARK: - Editing the Cell
  
  @discardableResult
  func isEditing(_ flag: Bool, animated: Bool = false) -> Builder {
    base.setEditing(flag, animated: animated)
    return self
  }
  
  @discardableResult
  func showsReorderControl(_ flag: Bool) -> Builder {
    base.showsReorderControl = flag
    return self
  }
  
  // MARK: - Dragging the Row
  
  @discardableResult
  func userInteractionEnabledWhileDraggin(_ flag: Bool) -> Builder {
    base.userInteractionEnabledWhileDragging = flag
    return self
  }
  
  // MARK: - Managing Content Indentation
  
  @discardableResult
  func indentation(_ indentation: TableViewCellIndentation) -> Builder {
    switch indentation {
    case let .each(level, width):
      base.indentationLevel = level
      base.indentationWidth = width
    case let .level(value):
      base.indentationLevel = value
    case let .width(value):
      base.indentationWidth = value
    }
    return self
  }
  
  @discardableResult
  func shouldIndentWhileEditing(_ flag: Bool) -> Builder {
    base.shouldIndentWhileEditing = flag
    return self
  }
  
  @discardableResult
  func separatorInset(_ inset: EdgeInsets) -> Builder {
    switch inset {
    case let .each(top, left, bottom, right):
      base.separatorInset = .init(top: top, left: left, bottom: bottom, right: right)
    case let .all(value):
      base.separatorInset = .init(top: value, left: value, bottom: value, right: value)
    case let .symmetric(horizontal, vertical):
      base.separatorInset = .init(top: vertical,
                                  left: horizontal,
                                  bottom: vertical,
                                  right: horizontal)
    case let .horizontal(value):
      base.separatorInset = .init(top: 0, left: value, bottom: 0, right: value)
    case let .vertical(value):
      base.separatorInset = .init(top: value, left: 0, bottom: value, right: 0)
    case let .top(value):
      base.separatorInset = .init(top: value, left: 0, bottom: 0, right: 0)
    case let .left(value):
      base.separatorInset = .init(top: 0, left: value, bottom: 0, right: 0)
    case let .bottom(value):
      base.separatorInset = .init(top: 0, left: 0, bottom: value, right: 0)
    case let .right(value):
      base.separatorInset = .init(top: 0, left: 0, bottom: 0, right: value)
    case .zero:
      base.separatorInset = .zero
    }
    return self
  }
  
  // MARK: - Managing Focus
  
  @discardableResult
  func focusStyle(_ style: UITableViewCell.FocusStyle) -> Builder {
    base.focusStyle = style
    return self
  }
}

#endif
