//
//  NSString+SCExtend.h
//  SCUtility
//
//  Created by Jarry on 13-5-27.
//  Copyright (c) 2013年 Jarry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SCExtend)

/**
 *  MD5
 */
+ (NSString *) MD5:(NSString *)targetStr;

- (NSString *) MD5String;

/**
 *  Sha1
 */
- (NSString *) SHA1String;

/**
 *  Base64
 */
- (NSString *) base64EncodedString;

- (NSString *) base64DecodedString;

/**
 *  URL Encoded
 */
- (NSString *) urlEncodedString;

/**
 *  空格过滤
 */
- (NSString *) trim;

- (NSNumber *) numericValue;

+ (void) printFontAndFamilyName;

- (CGSize) sizeWithFont:(UIFont *)font maxWidth:(CGFloat)width;

/**
 *  去除字符串中所有的空白字符
 */
- (NSString *) removeAllWhitespace;

- (NSString *) unicodeString;

/**
 *  手机号格式有效性校验
 *
 *  @return YES/NO
 */
- (BOOL) isValidateMobile;

/**
 *  密码格式有效性校验
 *
 *  @return YES/NO
 */
- (BOOL) isValidatePassword;

/**
 *  邮箱格式有效性校验
 *
 *  @return YES/NO
 */
- (BOOL) isValidateEMail;

/**
 *  用户名格式有效性校验
 *
 *  @return YES/NO
 */
- (BOOL) isValidateUsername;

/**
 *  判断是否为Int型
 *  @return YES/NO
 */
- (BOOL) isPureInt;
/**
 *  判断是否为浮点型
 *  @return YES/NO
 */
- (BOOL) isPureFloat;

@end
