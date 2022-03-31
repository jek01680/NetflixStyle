//
//  ContentCollectionViewCell.swift
//  NetflixStyleApp
//
//  Created by 정은경 on 2022/03/28.
//

import UIKit
import SnapKit

class ContentCollectionViewCell : UICollectionViewCell{
    let imageView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //contentView기본객체에 서브뷰로 올려야 보여질수있음
        contentView.backgroundColor = .black
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleAspectFit
        
        contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}
