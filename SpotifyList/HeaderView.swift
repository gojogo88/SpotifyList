//
//  HeaderView.swift
//  SpotifyList
//
//  Created by Jonathan Go on 6/22/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

struct Track {
  let imageName: String
}

class HeaderView: UICollectionReusableView {
  // MARK: - Properties
  static let reuseIdentifier = "header-supplementary-reuseId"
  
  let imageView: UIImageView = {
    let iv = UIImageView()
    iv.translatesAutoresizingMaskIntoConstraints = false
    return iv
  }()
  
  var track: Track? {
    didSet {
      guard let track = track else { return }
      let image = UIImage(named: track.imageName) ?? UIImage(named: "placeholder")!
      
      imageView.image = image
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension HeaderView {
  func layout() {
    addSubview(imageView)
    
    NSLayoutConstraint.activate([
      imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
      imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
      imageView.widthAnchor.constraint(equalToConstant: 300),
      imageView.heightAnchor.constraint(equalToConstant: 300)
    ])
  }
  
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 300, height: 300)
  }
}
