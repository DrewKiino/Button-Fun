//
//  UICollectionViewFlowLayout+Extensions.swift
//  ButtonFun
//
//  Created by Andrew Aquino on 11/2/19.
//  Copyright © 2019 Andrew Aquino. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionViewFlowLayout {
  public static func numberOfItems(ofSize itemSize: CGSize, toFitWithin mapSize: CGSize) -> Int {
    let x = floor(mapSize.width / itemSize.width)
    let y = floor(mapSize.height / itemSize.height)
    return Int(x * y)
  }
}
