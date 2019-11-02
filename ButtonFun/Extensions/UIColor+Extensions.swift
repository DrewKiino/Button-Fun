//
//  UIColor+Extensions.swift
//  ButtonFun
//
//  Created by Andrew Aquino on 11/2/19.
//  Copyright © 2019 Andrew Aquino. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
  public static func random() -> UIColor {
    return UIColor(
      red: .random(in: 0...1),
      green: .random(in: 0...1),
      blue: .random(in: 0...1),
      alpha: 1.0
    )
  }
}
