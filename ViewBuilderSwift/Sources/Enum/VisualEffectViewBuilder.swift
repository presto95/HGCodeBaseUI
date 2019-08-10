//
//  VisualEffectViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum VisualEffectViewBuilder {
  
  public enum Effect {
    
    case blur(UIBlurEffect.Style)
    
    case vibrancy(UIBlurEffect.Style)
  }
}

#endif
