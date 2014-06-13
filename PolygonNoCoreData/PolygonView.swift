//
//  PolygonView.swift
//  Polygon
//
//  Created by Jonathan Schmidt on 04/06/2014.
//  Copyright (c) 2014 Matelli. All rights reserved.
//

import UIKit

class PolygonView: UIView {

    var sides:Int = 3 {
    didSet {
        self.setNeedsDisplay()
    }
    }
    
//    Need to comment, causes crash otherwise (init(Coder:) not inherited)
//
//    init(frame: CGRect) {
//        super.init(frame: frame)
//        // Initialization code
//    }

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        let alpha:CGFloat = 2 * CGFloat(M_PI) / CGFloat(sides)

        let mX:CGFloat = self.bounds.size.width / 2
        
        let mY:CGFloat = self.bounds.size.height / 2
        
        let r = min(mX, mY);
        
        let ctx = UIGraphicsGetCurrentContext()
        CGContextBeginPath(ctx)
        
        for index in 0..sides
        {
            let x = mX + r * cosf(alpha * CGFloat(index))
            let y = mY + r * sinf(alpha * CGFloat(index))
            if index == 0 {
                CGContextMoveToPoint(ctx, x, y)
            }
            else {
                CGContextAddLineToPoint(ctx, x, y)
            }
        }
        CGContextClosePath(ctx)
        
        CGContextSetStrokeColorWithColor(ctx, UIColor.blackColor().CGColor)
        
        CGContextDrawPath(ctx, kCGPathStroke)
    }

}
