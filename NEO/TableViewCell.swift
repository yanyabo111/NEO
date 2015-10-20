//
//  TableViewCell.swift
//  NEO
//
//  Created by 晏亚博 on 15/10/20.
//  Copyright © 2015年 晏亚博. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
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
            => imageView.width == imageView.height * 1.66
        
        let textView = UILabel()
        
        let text = Int(arc4random_uniform(10)) > 4 ? "超级超级超级超级超级超级超级超级超级超级超级超级超级超级超级超级超级超级超级超级牛牛牛" : "牛牛牛"
        
        textView.attributedText = NSMutableAttributedString(string: text)
        textView.textColor = UIColor.whiteColor()
        textView.backgroundColor = UIColor.blackColor()
        textView.numberOfLines = 0
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(textView)
        
        self.contentView
            => textView.top == imageView.bottom + 10
            => textView.left == self.contentView.left + 30
            => textView.right == self.contentView.right - 30
            => textView.bottom == self.contentView.bottom - 10
    }

}
