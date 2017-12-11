//
//  FlickrPhotoCell.swift
//  FlickrSearch
//
//  Created by Weronika Golota on 11.12.2017.
//  Copyright © 2017 Weronika Golota. All rights reserved.
//

import UIKit

class FlickrPhotoCell: UICollectionViewCell {
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var imageView: UIImageView!
    
    // MARK: - Properties
    override var isSelected: Bool {
        didSet {
            imageView.layer.borderWidth = isSelected ? 10 : 0
        }
    }
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.borderColor = themeColor.cgColor
        isSelected = false
    }
}
