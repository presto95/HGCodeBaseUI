//
//  UIView+SnapKit.swift
//  ViewBuilderSwift
//
//  Created by Presto on 15/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

import SnapKit

public extension UIView {
  
  /// Becomes a last subview of `view`'s list of subviews applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     withConstraints constraintMaker: ((ConstraintMaker) -> Void)? = nil) {
    view.addSubview(self)
    if let constraintMaker = constraintMaker {
      snp.makeConstraints(constraintMaker)
    }
  }
  
  /// Becomes a `index`th subview of `view`'s list of subviews applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     insertedAt index: Int,
                     withConstraints constraintMaker: ((ConstraintMaker) -> Void)? = nil) {
    view.insertSubview(self, at: index)
    if let constraintMaker = constraintMaker {
      snp.makeConstraints(constraintMaker)
    }
  }
  
  /// Becomes a subview of `view`'s list of subviews above `aboveView`
  /// applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     aboveSubview aboveView: UIView,
                     withConstraints constraintMaker: ((ConstraintMaker) -> Void)? = nil) {
    view.insertSubview(self, aboveSubview: aboveView)
    if let constraintMaker = constraintMaker {
      snp.makeConstraints(constraintMaker)
    }
  }
  
  /// Becomes a subview of `view`'s list of subviews below `belowView`
  /// applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     belowSubview belowView: UIView,
                     withConstraints constraintMaker: ((ConstraintMaker) -> Void)? = nil) {
    view.insertSubview(self, belowSubview: belowView)
    if let constraintMaker = constraintMaker {
      snp.makeConstraints(constraintMaker)
    }
  }
}
