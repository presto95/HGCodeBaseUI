//
//  CollectionViewRegisterView.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum CollectionViewRegisterView {
  
  case cell(TableViewRegisterMethod)
  
  case supplementaryView(TableViewRegisterMethod, kind: String)
}

#endif
