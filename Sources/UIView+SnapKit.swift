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
  /// Applies constraints using `constraintMaker` closure.
  func constraints(constraintMaker: (ConstraintMaker) -> Void) {
    snp.makeConstraints(constraintMaker)
  }

  /// Becomes a last subview of `view`'s list of subviews.
  func becomeSubview(of view: UIView) {
    view.addSubview(self)
  }

  /// Becomes a last subview of `view`'s list of subviews applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     withConstraints constraintMaker: (ConstraintMaker) -> Void) {
    view.addSubview(self)
    snp.makeConstraints(constraintMaker)
  }

  /// Becomes a `index`th subview of `view`'s list of subviews.
  func becomeSubview(of view: UIView, insertedAt index: Int) {
    view.insertSubview(self, at: index)
  }

  /// Becomes a `index`th subview of `view`'s list of subviews applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     insertedAt index: Int,
                     withConstraints constraintMaker: (ConstraintMaker) -> Void) {
    view.insertSubview(self, at: index)
    snp.makeConstraints(constraintMaker)
  }

  /// Becomes a subview of `view`'s list of subviews above `aboveView`.
  func becomeSubview(of view: UIView, aboveSubview aboveView: UIView) {
    view.insertSubview(self, aboveSubview: aboveView)
  }

  /// Becomes a subview of `view`'s list of subviews above `aboveView`
  /// applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     aboveSubview aboveView: UIView,
                     withConstraints constraintMaker: (ConstraintMaker) -> Void) {
    view.insertSubview(self, aboveSubview: aboveView)
    snp.makeConstraints(constraintMaker)
  }

  /// Becomes a subview of `view`'s list of subviews below `belowView`.
  func becomeSubview(of view: UIView, belowSubview belowView: UIView) {
    view.insertSubview(self, belowSubview: belowView)
  }

  /// Becomes a subview of `view`'s list of subviews below `belowView`
  /// applying `constraintMaker` closure.
  func becomeSubview(of view: UIView,
                     belowSubview belowView: UIView,
                     withConstraints constraintMaker: (ConstraintMaker) -> Void) {
    view.insertSubview(self, belowSubview: belowView)
    snp.makeConstraints(constraintMaker)
  }
}
