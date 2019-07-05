//
//  ItemCell.swift
//  PercentageWidthLayoutCell
//
//  Created by Greg Alton on 7/5/19.
//  Copyright © 2019 Greg Alton. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        
        self.addSubview(blueView)
        self.addSubview(greenView)
        
        NSLayoutConstraint.activate([
            blueView.leftAnchor.constraint(equalTo: self.leftAnchor),
            blueView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.33),
            blueView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            greenView.rightAnchor.constraint(equalTo: self.rightAnchor),
            greenView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.66),
            greenView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
