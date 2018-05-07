//
//  ActionItem.swift
//  FacebookActionSheet
//
//  Created by Thanathip on 7/5/2561 BE.
//  Copyright © 2561 Thanathip. All rights reserved.
//

import Foundation

public struct ActionItem {
    public enum ItemType {
        case Normal
        case Cancel
    }

    public typealias OnTapHandler = (() -> ())

    public var title: String? = nil
    public var subTitle: String? = nil
    public var iconFont: String? = nil
    public var type: ItemType = .Normal
    public var onTapHandler: OnTapHandler?

    public init (title: String?, subTitle: String?, iconFont: String?, onTap: OnTapHandler?) {
        self.title = title
        self.subTitle = subTitle
        self.iconFont = iconFont
        self.onTapHandler = onTap
    }
    // normal type
    public init (title: String?, iconFont: String?, type: ItemType) {
        self.title = title
        self.iconFont = iconFont
        self.type = type
    }
}
