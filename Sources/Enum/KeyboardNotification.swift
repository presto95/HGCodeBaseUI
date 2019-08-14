//
//  KeyboardNotification.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum KeyboardNotification {
  
  case willShow
  
  case didShow
  
  case willHide
  
  case didHide
  
  case willChangeFrame
  
  case didChangeFrame
}

public extension KeyboardNotification {
  
  var notificationName: NSNotification.Name {
    switch self {
    case .willShow:
      return UIWindow.keyboardWillShowNotification
    case .didShow:
      return UIWindow.keyboardDidShowNotification
    case .willHide:
      return UIWindow.keyboardWillHideNotification
    case .didHide:
      return UIWindow.keyboardDidHideNotification
    case .willChangeFrame:
      return UIWindow.keyboardWillChangeFrameNotification
    case .didChangeFrame:
      return UIWindow.keyboardDidChangeFrameNotification
    }
  }
}

#endif
