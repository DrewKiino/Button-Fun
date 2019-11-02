//
//  NSLayoutConstraint+Extensions.swift
//  ButtonFun
//
//  Created by Andrew Aquino on 11/2/19.
//  Copyright © 2019 Andrew Aquino. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutConstraint {
  public static func constrainFill(_ view: UIView, to parentView: UIView) {
    view.translatesAutoresizingMaskIntoConstraints = false
    activate([
      view.leadingAnchor.constraint(equalTo: parentView.leadingAnchor),
      view.trailingAnchor.constraint(equalTo: parentView.trailingAnchor),
      view.topAnchor.constraint(equalTo: parentView.topAnchor),
      view.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
    ])
  }
}
