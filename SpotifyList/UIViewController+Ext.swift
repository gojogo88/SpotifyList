//
//  UIViewController+Ext.swift
//  SpotifyList
//
//  Created by Jonathan Go on 6/29/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

extension UIViewController {
  func add(_ child: UIViewController) {
    addChild(child)
    view.addSubview(child.view)
    child.didMove(toParent: self)
  }
  
  func remove() {
    guard parent != nil else { return }
    
    willMove(toParent: nil)
    view.removeFromSuperview()
    removeFromParent()
  }
}
