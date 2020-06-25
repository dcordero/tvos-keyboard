//
//  SearchResultsViewCell.swift
//  TvOSKeyboardCollapses
//
//  Created by David Cordero on 25.06.20.
//  Copyright © 2020 David Cordero. All rights reserved.
//

import UIKit


class SearchResultsViewCell: UICollectionViewCell {

    static var reuseIdentifier: String { return String(describing: self) + "ReuseIdentifier" }

    var titleLabel: UILabel!

    public static func register(in collectionView: UICollectionView) {
        collectionView.register(SearchResultsViewCell.self, forCellWithReuseIdentifier: SearchResultsViewCell.reuseIdentifier)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel = UILabel(frame: bounds)
        backgroundColor = .blue
        contentView.addSubview(titleLabel)
    }

    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        backgroundColor = isFocused ? .red : .blue
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
