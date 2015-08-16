//
//  UITextView+InsertAttributedText.h
//  Tools
//
//  Created by Colin on 15-2-6.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (InsertAttributedText)

/**
 *  插入属性文字到光标处
 *
 *  @param text 属性文字
 */
- (void)insertAttributedText:(NSAttributedString *)text;

/**
 *  插入并设置属性文字到光标处
 *
 *  @param text         属性文字
 *  @param settingBlock 设置
 */
- (void)insertAttributedText:(NSAttributedString *)text settingBlock:(void(^)(NSMutableAttributedString *attributedText))settingBlock;

@end
