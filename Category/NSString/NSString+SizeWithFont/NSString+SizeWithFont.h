//
//  NSString+SizeWithFont.h
//  Tools
//
//  Created by Colin on 15-1-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SizeWithFont)

/**
 *  根据字体样式和文本宽度计算文本所占大小
 *
 *  @param font     字体样式
 *  @param maxWidth 文本宽度
 */
- (CGSize)sizeWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth;

/**
 *  根据字体样式计算文本所占大小
 *
 *  @param text 文本
 */
- (CGSize)sizeWithFont:(UIFont *)font;

@end
