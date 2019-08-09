//
//  UIProgressViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UIProgressView {
  
  func builder() -> UIProgressViewBuilder {
    return .init(progressView: self)
  }
}

public final class UIProgressViewBuilder {
  
  private let progressView: UIProgressView
  
  init() {
    progressView = .init()
  }
  
  init(progressView: UIProgressView) {
    self.progressView = progressView
  }
  
  // MARK: - Managing the Progress Bar
  
  @discardableResult
  func progress(_ progress: Float) -> UIProgressViewBuilder {
    progressView.progress = progress
    return self
  }
  
  @discardableResult
  func observedProgress(_ progress: Progress?) -> UIProgressViewBuilder {
    progressView.observedProgress = progress
    return self
  }
  
  // MARK: - Configuring the Progress Bar
  
  @discardableResult
  func progressViewStyle(_ style: UIProgressView.Style) -> UIProgressViewBuilder {
    progressView.progressViewStyle = style
    return self
  }
  
  @discardableResult
  func tintColor(_ progressType: ProgressType<UIColor?>) -> UIProgressViewBuilder {
    switch progressType {
    case let .each(progress, track):
      progressView.progressTintColor = progress
      progressView.trackTintColor = track
    case let .progress(color):
      progressView.progressTintColor = color
    case let .track(color):
      progressView.trackTintColor = color
    }
    return self
  }
  
  @discardableResult
  func image(_ progressType: ProgressType<UIImage?>) -> UIProgressViewBuilder {
    switch progressType {
    case let .each(progress, track):
      progressView.progressImage = progress
      progressView.trackImage = track
    case let .progress(image):
      progressView.progressImage = image
    case let .track(image):
      progressView.trackImage = image
    }
    return self
  }
  
  // MARK: - Build
  
  func build() -> UIProgressView {
    return progressView
  }
}
