//
//  SectionView.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum SectionView {
  
  case each(header: UIView?, footer: UIView?)
  
  case header(UIView?)
  
  case footer(UIView?)
}

#endif
