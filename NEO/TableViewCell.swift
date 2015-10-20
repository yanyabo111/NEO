//
//  TableViewCell.swift
//  NEO
//
//  Created by 晏亚博 on 15/10/20.
//  Copyright © 2015年 晏亚博. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    func config() {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.grayColor()
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(imageView)
        
        self.contentView
            => imageView.top == self.contentView.top + 10
            => imageView.left == self.contentView.left + 10
            => imageView.right == self.contentView.right - 10
            => imageView.width == imageView.height
        
        let textView = UILabel()
        textView.text = "牛牛牛"
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(textView)
        
        self.contentView
            => textView.top == imageView.bottom + 10
            => textView.left == self.contentView.left + 30
            => textView.right == self.contentView.right - 30
            => textView.bottom == self.contentView.bottom - 10
    }

}
