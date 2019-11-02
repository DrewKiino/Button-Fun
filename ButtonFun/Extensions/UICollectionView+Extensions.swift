//
//  UICollectionView+Extensions.swift
//  ButtonFun
//
//  Created by Andrew Aquino on 11/2/19.
//  Copyright © 2019 Andrew Aquino. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
  public static func compactLayoutConfiguration() -> (UICollectionViewFlowLayout, UICollectionView) {
    let layout = UICollectionViewFlowLayout()
    layout.minimumInteritemSpacing = 0.0
    layout.minimumLineSpacing = 0.0
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
    return (layout, cv)
  }
}
