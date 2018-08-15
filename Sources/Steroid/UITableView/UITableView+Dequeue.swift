//
//  UITableView+Dequeue.swift
//  Steroid
//
//  Copyright (c) 2018 Jason Nam (https://jasonnam.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

public extension UITableView {

    func dequeueReusableCell(withStyle style: UITableViewCell.CellStyle, for indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(style.rawValue)
        return dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: style, reuseIdentifier: identifier)
    }

    func register<T: UITableViewCell>(_ classType: T.Type) {
        register(classType, forCellReuseIdentifier: String(describing: T.self))
    }

    func register<T: UITableViewHeaderFooterView>(_ classType: T.Type) {
        register(classType, forCellReuseIdentifier: String(describing: T.self))
    }

    func registerNib<T: UITableViewCell>(_ classType: T.Type) {
        let className = String(describing: T.self)
        register(UINib(nibName: className, bundle: nil), forCellReuseIdentifier: className)
    }

    func registerNib<T: UITableViewHeaderFooterView>(_ classType: T.Type) {
        let className = String(describing: T.self)
        register(UINib(nibName: className, bundle: nil), forHeaderFooterViewReuseIdentifier: className)
    }

    func dequeue<T: UITableViewCell>(_ classType: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }

    func dequeue<T: UITableViewHeaderFooterView>(_ classType: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: String(describing: T.self)) as! T
    }
}
