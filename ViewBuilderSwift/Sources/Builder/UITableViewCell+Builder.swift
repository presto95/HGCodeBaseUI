//
//  UITableViewCell+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UITableViewCell {
  
  // MARK: - Helper
  
  /// Helper associated with **background view** setting feature.
  ///
  /// - `plain` case for `backgroundView` property setter.
  /// - `selected` case for `selectedBackgroundView` property setter.
  /// - `multipleSelection` case for `multipleSelectionBackgroundView` property setter.
  @discardableResult
  func backgroundView(_ backgroundView: TableViewCellBuilder.BackgroundView) -> Builder {
    switch backgroundView {
    case let .each(plain, selected, multipleSelection):
      base.backgroundView = plain
      base.selectedBackgroundView = selected
      base.multipleSelectionBackgroundView = multipleSelection
    case let .plain(plain):
      base.backgroundView = plain
    case let .selected(selected):
      base.selectedBackgroundView = selected
    case let .multipleSelection(multipleSelection):
      base.multipleSelectionBackgroundView = multipleSelection
    }
    return self
  }
  
  /// Helper associated with **accessory** setting feature.
  ///
  /// - `plain` case for `accessoryType` and `accessoryView` property setter.
  /// - `editing` case for `editingAccessoryType` and `editingAccessoryView` property setter.
  /// - `type` case for `accessoryType` property setter.
  /// - `view` case for `accessoryView` property setter.
  /// - `editingType` case for `editingAccessoryType` property setter.
  /// - `editingView` case for `editingAccessoryView` property setter.
  @discardableResult
  func accessory(_ accessory: TableViewCellBuilder.Accessory) -> Builder {
    switch accessory {
    case let .each(type, view, editingType, editingView):
      base.accessoryType = type
      base.accessoryView = view
      base.editingAccessoryType = editingType
      base.editingAccessoryView = editingView
    case let .plain(type, view):
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
  
  /// Helper associated with **indentation** setting feature.
  ///
  /// - `level` case for `indentationLevel` property setter.
  /// - `width` case for `indentationWidth` property setter.
  @discardableResult
  func indentation(_ indentation: TableViewCellBuilder.Indentation) -> Builder {
    switch indentation {
    case let .each(level, width):
      base.indentationLevel = level
      base.indentationWidth = width
    case let .level(level):
      base.indentationLevel = level
    case let .width(width):
      base.indentationWidth = width
    }
    return self
  }
  
  /// Helper of `separatorInset` property setter.
  @discardableResult
  func separatorInset(_ inset: EdgeInsets) -> Builder {
    base.separatorInset = inset.uiEdgeInsets
    return self
  }
  
  // MARK: - Accessing Views of the Cell Object
  
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
  
  /// Wrapper of `multipleSelectionBackgroundView` property setter.
  @discardableResult
  func multipleSelectionBackgroundView(_ view: UIView?) -> Builder {
    base.multipleSelectionBackgroundView = view
    return self
  }
  
  // MARK: - Managing Accessory Views
  
  /// Wrapper of `accessoryType` property setter.
  @discardableResult
  func accessoryType(_ type: UITableViewCell.AccessoryType) -> Builder {
    base.accessoryType = type
    return self
  }
  
  /// Wrapper of `accessoryView` property setter.
  @discardableResult
  func accessoryView(_ view: UIView?) -> Builder {
    base.accessoryView = view
    return self
  }
  
  /// Wrapper of `editingAccessoryType` property setter.
  @discardableResult
  func editingAccessoryType(_ type: UITableViewCell.AccessoryType) -> Builder {
    base.editingAccessoryType = type
    return self
  }
  
  /// Wrapper of `editingAccessoryView` property setter.
  @discardableResult
  func editingAccessoryView(_ view: UIView?) -> Builder {
    base.editingAccessoryView = view
    return self
  }
  
  // MARK: - Managing Cell Selection and Highlighting
  
  /// Wrapper of `selectionStyle` property setter.
  @discardableResult
  func selectionStyle(_ style: UITableViewCell.SelectionStyle) -> Builder {
    base.selectionStyle = style
    return self
  }
  
  /// Wrapper of `isSelected` property setter.
  @discardableResult
  func isSelected(_ flag: Bool) -> Builder {
    base.isSelected = flag
    return self
  }
  
  /// Wrapper of `setSelected(_:animated:)` method.
  @discardableResult
  func isSelected(_ flag: Bool, animated: Bool) -> Builder {
    base.setSelected(flag, animated: animated)
    return self
  }
  
  /// Wrapper of `isHighlighted` property setter.
  @discardableResult
  func isHighlighted(_ flag: Bool) -> Builder {
    base.isHighlighted = flag
    return self
  }
  
  /// Wrapper of `setHighlighted(_:animated:)` method.
  @discardableResult
  func isHighlighted(_ flag: Bool, animated: Bool) -> Builder {
    base.setHighlighted(flag, animated: animated)
    return self
  }
  
  // MARK: - Editing the Cell
  
  /// Wrapper of `isEditing` property setter.
  @discardableResult
  func isEditing(_ flag: Bool) -> Builder {
    base.isEditing = flag
    return self
  }
  
  /// Wrapper of `setEditing(_:animated:)` method.
  @discardableResult
  func isEditing(_ flag: Bool, animated: Bool) -> Builder {
    base.setEditing(flag, animated: animated)
    return self
  }
  
  /// Wrapper of `showsReorderControl` property setter.
  @discardableResult
  func showsReorderControl(_ flag: Bool) -> Builder {
    base.showsReorderControl = flag
    return self
  }
  
  // MARK: - Dragging the Row
  
  /// Wrapper of `userInteractionEnabledWhileDragging` property setter;
  @discardableResult
  func userInteractionEnabledWhileDragging(_ flag: Bool) -> Builder {
    base.userInteractionEnabledWhileDragging = flag
    return self
  }
  
  // MARK: - Managing Content Indentation
  
  /// Wrapper of `indentationLevel` property setter.
  @discardableResult
  func indentationLevel(_ level: Int) -> Builder {
    base.indentationLevel = level
    return self
  }
  
  /// Wrapper of `indentationWidth` property setter.
  @discardableResult
  func indentationWidth(_ width: CGFloat) -> Builder {
    base.indentationWidth = width
    return self
  }
  
  /// Wrapper of `shouldIndentWhileEditing` property setter.
  @discardableResult
  func shouldIndentWhileEditing(_ flag: Bool) -> Builder {
    base.shouldIndentWhileEditing = flag
    return self
  }
  
  /// Wrapper of `separatorInset` property setter.
  @discardableResult
  func separatorInset(_ inset: UIEdgeInsets) -> Builder {
    base.separatorInset = inset
    return self
  }
  
  // MARK: - Managing Focus
  
  /// Wrapper of `focusStyle` property setter.
  @discardableResult
  func focusStyle(_ style: UITableViewCell.FocusStyle) -> Builder {
    base.focusStyle = style
    return self
  }
}

#endif
