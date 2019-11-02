//
//  ViewController.swift
//  ButtonFun
//
//  Created by Andrew Aquino on 11/2/19.
//  Copyright © 2019 Andrew Aquino. All rights reserved.
//

import Foundation
import UIKit

private struct Constants {
  static let itemSize: CGSize = CGSize(width: 40.0, height: 40.0)
  static let itemReuseIdentifier: String = "UICollectionViewCell"
}

public class ViewController: UIViewController {
  
  // MARK: - Subviews
  
  private let (collectionViewLayout, collectionView) = UICollectionView.compactLayoutConfiguration()

  // MARK: - View Life Cycle

  public override func viewDidLoad() {
    super.viewDidLoad()
    configureSelf()
    configureCollectionView()
    configureLayout()

    loadInitialViewData()
  }

  // MARK: -  Configure Methods
  
  private func configureSelf() {
    view.backgroundColor = .white
  }
  
  private func configureCollectionView() {
    collectionViewLayout.itemSize = Constants.itemSize
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: Constants.itemReuseIdentifier)
  }

  private func configureLayout() {
    view.addSubview(collectionView)
    NSLayoutConstraint.constrainFill(collectionView, to: view)
  }
  
  // MARK: - View Configuration
  
  public override var prefersStatusBarHidden: Bool {
    return true
  }
  
  // MARK: - Data Modeling
  
  private func loadInitialViewData() {
    collectionView.reloadData()
  }
}


// MARK: - UI CollectionView Delegate Methods

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

  public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return UICollectionViewFlowLayout.numberOfItems(
      ofSize: Constants.itemSize,
      toFitWithin: UIScreen.main.bounds.size
    )
  }
  
  public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.itemReuseIdentifier, for: indexPath)
    cell.backgroundColor = .random()
    cell.layer.borderColor = UIColor.black.cgColor
    cell.layer.borderWidth = 1.0
    return cell
  }
  
  public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    guard let cell = collectionView.cellForItem(at: indexPath) else { return }
    cell.backgroundColor = .random()
  }
}
