//
//  Text.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum Text {
  
  case plain(String?)
  
  case attributed(String, attributes: [NSAttributedString.Key: Any])
}

#endif
