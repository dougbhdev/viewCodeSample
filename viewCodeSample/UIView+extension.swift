//
//  UIView+extension.swift
//  viewCodeSample
//
//  Created by Douglas Henrique Goulart Nunes on 06/12/19.
//  Copyright © 2019 Douglas Henrique Goulart Nunes. All rights reserved.
//

import UIKit

extension UIView {
  func addSubviews(_ views: UIView...) {
    _ = views.map({ self.addSubview($0) })
  }
}
