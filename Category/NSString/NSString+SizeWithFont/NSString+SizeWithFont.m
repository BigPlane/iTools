//
//  NSString+SizeWithFont.m
//  Tools
//
//  Created by Colin on 15-1-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//
#define iOS7 [UIDevice currentDevice].systemVersion.doubleValue >= 7.0

#import "NSString+SizeWithFont.h"
 #import <UIKit/UIKit.h>

@implementation NSString (SizeWithFont)

#pragma mark - 根据文本, 字体样式或文本宽度计算文本所占大小
/**
 *  根据字符串样式、字符串长度计算字符串所占大小
 *
 *  @param font     字符串样式
 *  @param maxWidth 字符串长度
 */
- (CGSize)sizeWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth
{
    // 获取文字样式
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    
    // 根据文字样式计算文字所占大小
    // 文本最大宽度
    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);

    // 系统适配
    if (iOS7)
    {
        // NSStringDrawingUsesLineFragmentOrigin -> 从头开始
        return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    }
    else
    {
        return [self sizeWithFont:font constrainedToSize:maxSize];
    }
}

/**
 *  根据字符串样式计算字符串所占大小
 *
 *  @param font 字符串样式
 */
- (CGSize)sizeWithFont:(UIFont *)font
{
    return [self sizeWithFont:font maxWidth:MAXFLOAT];
}

@end
