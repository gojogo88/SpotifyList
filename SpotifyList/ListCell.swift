//
//  ListCell.swift
//  SpotifyList
//
//  Created by Jonathan Go on 6/22/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

class ListCell:UICollectionViewCell {
  // MARK: - Properties
  static let reuseIdentifier = "list-cell-reuseID"
  
  let label: UILabel = {
    let label                               = UILabel()
    label.font                              = UIFont.preferredFont(forTextStyle: .body)
    label.adjustsFontForContentSizeCategory = true
    label.textColor                         = .label
    label.adjustsFontSizeToFitWidth         = true
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let accessoryImageView: UIImageView = {
    let iv        = UIImageView()
    iv.tintColor  = .systemGray
    iv.translatesAutoresizingMaskIntoConstraints = false
    return iv
  }()
  
  let separatorView: UIView = {
    let view              = UIView()
    view.backgroundColor  = .systemGray
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension ListCell {
  func layout() {
    let rtl = effectiveUserInterfaceLayoutDirection == .rightToLeft
    let chevronImageName = rtl ? "chevron.left" : "chevron.right"
    let chevronImage = UIImage(systemName: chevronImageName)
    let inset = CGFloat(10)
    
    contentView.addSubview(separatorView)
    contentView.addSubview(label)
    contentView.addSubview(accessoryImageView)
    
    accessoryImageView.image = chevronImage
    
    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
      label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
      label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset),
      label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
      
      accessoryImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
      accessoryImageView.widthAnchor.constraint(equalToConstant: 13),
      accessoryImageView.heightAnchor.constraint(equalToConstant: 20),
      accessoryImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
      
      separatorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
      separatorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
      separatorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
      separatorView.heightAnchor.constraint(equalToConstant: 0.5)
    ])
  }
}
