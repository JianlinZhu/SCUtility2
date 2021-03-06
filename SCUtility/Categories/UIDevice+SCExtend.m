//
//  UIDevice+SCExtend.m
//  SCUtility
//
//  Created by Jarry on 5/28/12.
//  Copyright (c) 2012 Jarry. All rights reserved.
//

#import "UIDevice+SCExtend.h"
#import "sys/utsname.h"

@implementation UIDevice (SCExtend)

- (NSString *) deviceModel
{
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

- (NSString *) deviceString
{
    NSString *model = [self deviceModel];
    
    NSArray *modelArray = @[
                            @"i386", @"x86_64",
                            
                            @"iPhone1,1",
                            @"iPhone1,2",
                            @"iPhone2,1",
                            @"iPhone3,1",
                            @"iPhone3,2",
                            @"iPhone3,3",
                            @"iPhone4,1",
                            @"iPhone5,1",
                            @"iPhone5,2",
                            @"iPhone5,3",
                            @"iPhone5,4",
                            @"iPhone6,1",
                            @"iPhone6,2",
                            @"iPhone7,1",
                            @"iPhone7,2",
                            @"iPhone8,1",
                            @"iPhone8,2",
                            @"iPhone8,4",
                            @"iPhone9,1",
                            @"iPhone9,3",
                            @"iPhone9,2",
                            @"iPhone9,4",
                            @"iPhone10,1",
                            @"iPhone10,4",
                            @"iPhone10,2",
                            @"iPhone10,5",
                            @"iPhone10,3",
                            @"iPhone10,6",

                            @"iPod1,1",
                            @"iPod2,1",
                            @"iPod3,1",
                            @"iPod4,1",
                            @"iPod5,1",
                            @"iPod7,1",

                            @"iPad1,1",
                            @"iPad2,1",
                            @"iPad2,2",
                            @"iPad2,3",
                            @"iPad2,4",
                            @"iPad3,1",
                            @"iPad3,2",
                            @"iPad3,3",
                            @"iPad3,4",
                            @"iPad3,5",
                            @"iPad3,6",
                            @"iPad4,1",
                            @"iPad4,2",
                            @"iPad4,3",
                         
                            @"iPad2,5",
                            @"iPad2,6",
                            @"iPad2,7",
                            @"iPad4,4",
                            @"iPad4,5",
                            @"iPad4,6",
                            @"iPad4,7",
                            @"iPad4,8",
                            @"iPad4,9",

                            @"iPad5,1",
                            @"iPad5,2",
                            @"iPad5,3",
                            @"iPad5,4",
                            @"iPad6,3",
                            @"iPad6,4",
                            @"iPad6,7",
                            @"iPad6,8"
                            ];
    NSArray *modelNameArray = @[
                                @"iPhone Simulator", @"iPhone Simulator",
                                
                                @"iPhone 2G",
                                @"iPhone 3G",
                                @"iPhone 3GS",
                                @"iPhone 4",
                                @"iPhone 4",
                                @"iPhone 4",
                                @"iPhone 4S",
                                @"iPhone 5",
                                @"iPhone 5",
                                @"iPhone 5c",
                                @"iPhone 5c",
                                @"iPhone 5s",
                                @"iPhone 5s",
                                @"iPhone 6 Plus",
                                @"iPhone 6",
                                @"iPhone 6s",
                                @"iPhone 6s Plus",
                                @"iPhone SE",
                                @"iPhone 7",
                                @"iPhone 7",
                                @"iPhone 7 Plus",
                                @"iPhone 7 Plus",
                                @"iPhone 8",
                                @"iPhone 8",
                                @"iPhone 8 Plus",
                                @"iPhone 8 Plus",
                                @"iPhone X",
                                @"iPhone X",

                                @"iPod Touch 1G",
                                @"iPod Touch 2G",
                                @"iPod Touch 3G",
                                @"iPod Touch 4G",
                                @"iPod Touch 5G",
                                @"iPod Touch 6G",

                                @"iPad",
                                @"iPad 2",
                                @"iPad 2",
                                @"iPad 2",
                                @"iPad 2",
                                @"iPad 3",
                                @"iPad 3",
                                @"iPad 3",
                                @"iPad 4",
                                @"iPad 4",
                                @"iPad 4",
                                @"iPad Air",
                                @"iPad Air",
                                @"iPad Air",
                                
                                @"iPad mini",
                                @"iPad mini",
                                @"ipad mini",
                                @"iPad mini 2",
                                @"iPad mini 2",
                                @"iPad mini 2",
                                @"iPad mini 3",
                                @"iPad mini 3",
                                @"iPad mini 3",

                                @"iPad mini 4",
                                @"iPad mini 4",
                                @"iPad Air 2",
                                @"iPad Air 2",
                                @"iPad Pro 9.7‑inch",
                                @"iPad Pro 9.7‑inch",
                                @"iPad Pro 12.9‑inch",
                                @"iPad Pro 12.9‑inch"
                                ];
    
    NSInteger modelIndex = - 1;
    NSString *modelNameString = model;
    modelIndex = [modelArray indexOfObject:model];
    if (modelIndex >= 0 && modelIndex < [modelNameArray count]) {
        modelNameString = [modelNameArray objectAtIndex:modelIndex];
    }
    return modelNameString;
}

@end
