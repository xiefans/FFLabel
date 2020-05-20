//
//  FFLabel.m
//  FFLabel
//
//  Created by 谢帆 on 2020/5/20.
//  Copyright © 2020 谢帆. All rights reserved.
//

#import "FFLabel.h"
#import <CoreText/CoreText.h>

@implementation FFLabel

#pragma mark - Draw UI
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    [[UIColor whiteColor] setFill];
    UIRectFill(rect);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, nil, self.bounds);
    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:self.text];
    CTFramesetterRef framesett = CTFramesetterCreateWithAttributedString((__bridge CFAttributedStringRef)text);
    CTFrameRef frameRef = CTFramesetterCreateFrame(framesett, CFRangeMake(0, text.length), path, nil);
    
    CTFrameDraw(frameRef, context);
}

@end
