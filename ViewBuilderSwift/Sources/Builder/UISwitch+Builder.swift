//
//  UISwitch+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UISwitch {
  
  // MARK: - Setting the Off/On State
  
  @discardableResult
  func isOn(_ flag: Bool, animated: Bool = false) -> Builder {
    base.setOn(flag, animated: animated)
    return self
  }
  
  // MARK: - Customizing the Appearance of the Switch
  
  @discardableResult
  func tintColor(_ color: SwitchColor) -> Builder {
    switch color {
    case let .each(on, off, thumb):
      base.onTintColor = on
      base.tintColor = off
      base.thumbTintColor = thumb
    case let .on(color):
      base.onTintColor = color
    case let .off(color):
      base.tintColor = color
    case let .thumb(color):
      base.thumbTintColor = color
    }
    return self
  }
}

#endif
