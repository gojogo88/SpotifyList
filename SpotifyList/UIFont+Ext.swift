//
//  UIFont+Ext.swift
//  SpotifyList
//
//  Created by Jonathan Go on 6/29/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

extension UIFont {
  func withTraits(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
    let descriptor = fontDescriptor.withSymbolicTraits(traits)
    return UIFont(descriptor: descriptor!, size: 0)
  }
  
  func bold() -> UIFont {
    return withTraits(traits: .traitBold)
  }
}
