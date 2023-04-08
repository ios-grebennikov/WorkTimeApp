//
//  BaseView.swift
//  UIComponents
//
//  Created by Alexey Grebennikov on 6.04.23.
//

import UIKit

open class BaseView: UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
}

extension BaseView {
    @objc func setup() {}
}
