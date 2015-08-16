//
//  UITextView+InsertAttributedText.m
//  Tools
//
//  Created by CH on 15-2-6.
//  Copyright (c) 2015年 Colin. All rights reserved.
//

#import "UITextView+InsertAttributedText.h"

@implementation UITextView (InsertAttributedText)

- (void)insertAttributedText:(NSAttributedString *)text
{
    [self insertAttributedText:text settingBlock:nil];
}

- (void)insertAttributedText:(NSAttributedString *)text settingBlock:(void(^)(NSMutableAttributedString *))settingBlock
{
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] init];
    
    // 拼接之前的属性文字(图片和普通文字)
    [attributedText appendAttributedString:self.attributedText];
    
    // 在选中处拼接新的属性文字
    [attributedText replaceCharactersInRange:self.selectedRange withAttributedString:text];
    
    // 调用外界传进来的代码
    if (settingBlock)
    {
        settingBlock(attributedText);
    }
    
    self.attributedText = attributedText;
    
    // 获取光标位置
    NSUInteger cursorPosition = self.selectedRange.location;
    
    // 移动光标到属性文字后面
    self.selectedRange = NSMakeRange(cursorPosition + 1, 0);
}

@end
