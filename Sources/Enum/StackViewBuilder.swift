//
//  StackViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum StackViewBuilder {
  
  public enum Layout {
    
    case each(alignment: UIStackView.Alignment,
              axis: NSLayoutConstraint.Axis,
              distribution: UIStackView.Distribution,
              spacing: CGFloat)
    
    case alignment(UIStackView.Alignment)
    
    case axis(NSLayoutConstraint.Axis)
    
    case distribution(UIStackView.Distribution)
    
    case spacing(CGFloat)
  }
}

#endif
