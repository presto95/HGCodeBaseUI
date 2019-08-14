//
//  CollectionViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum CollectionViewBuilder {
  
  public enum RegisterMethod {
    
    case nib(UINib?, reuseIdentifier: String)
    
    case `class`(AnyObject.Type, reuseIdentifier: String)
  }
  
  public enum RegisterView {
    
    case cell(RegisterMethod)
    
    case supplementaryView(RegisterMethod, kind: String)
  }
}

#endif
