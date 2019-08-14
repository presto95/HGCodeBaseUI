//
//  UISwitch+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UISwitch {

  // MARK: - Helper
  
  /// Helper of `valueChanged` event of target-action pattern.
  @discardableResult
  func valueChanged(target: Any?, selector: Selector) -> Builder {
    base.addTarget(target, action: selector, for: .valueChanged)
    return self
  }
  
  /// Helper associated with **color** setting feature.
  ///
  /// - `on` case for `onTintColor` property setter.
  /// - `off` case for `tintColor` property setter.
  /// - `thumb` case for `thumbTintColor` property setter.
  @discardableResult
  func color(_ color: SwitchBuilder.Color) -> Builder {
    switch color {
    case let .each(on, off, thumb):
      base.onTintColor = on
      base.tintColor = off
      base.thumbTintColor = thumb
    case let .on(on):
      base.onTintColor = on
    case let .off(off):
      base.tintColor = off
    case let .thumb(thumb):
      base.thumbTintColor = thumb
    }
    return self
  }

  // MARK: - Setting the Off/On State
  
  /// Wrapper of `isOn` property setter.
  @discardableResult
  func isOn(_ flag: Bool) -> Builder {
    base.isOn = flag
    return self
  }
  
  /// Wrapper of `setOn(_:animated:)` method.
  @discardableResult
  func isOn(_ flag: Bool, animated: Bool) -> Builder {
    base.setOn(flag, animated: animated)
    return self
  }
  
  // MARK: - Customizing the Appearance of the Switch

  /// Wrapper of `onTintColor` property setter.
  @discardableResult
  func onTintColor(_ color: UIColor?) -> Builder {
    base.onTintColor = color
    return self
  }
  
  /// Wrapper of `tintColor` property setter.
  @discardableResult
  func tintColor(_ color: UIColor!) -> Builder {
    base.tintColor = color
    return self
  }
  
  /// Wrapper of `thumbTintColor` property setter.
  @discardableResult
  func thumbTintColor(_ color: UIColor?) -> Builder {
    base.thumbTintColor = color
    return self
  }
}

#endif
