// PCH-预编译头文件
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 4F42B960-945A-4E59-AC76-95E6C6C99A5D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// pre code header预编译头文件
// 作用：The contents of this file are implicitly included at the beginning of every source file.
// 目前创建工程不再默认会创建PCH文件，必须手动创建。Xcode7.1手动创建的PCH文件空空如也，如下所示
#ifndef PrefixHeader_pch
#define PrefixHeader_pch

// Include any system framework and library headers here that should be included in all compilation units.
// You will also need to set the Prefix Header build setting of one or more of your targets to reference this file.

#endif /* PrefixHeader_pch */


// 常用代码
#ifdef __OBJC__

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import "SVProgressHUD.h"
#import "SDWebImageManager.h"
#import "UIImageView+WebCache.h"
#import <BlocksKit.h>
#import <BlocksKit+UIKit.h>
#import <FrameAccessor.h>
//    #import <ReactiveCocoa.h>
#import "NSDictionary+NotNullKey.h"
#import "EXTScope.h"
#import "UIImage+Tint.h"

#import "SCNavigation.h"
#import "SCActionSheet.h"

#import "V2DataManager.h"
#import "V2NotificationManager.h"
#import "V2SettingManager.h"
#import "V2CheckInManager.h"
#import "SCWeiboManager.h"

#import "V2Helper.h"

#endif

#define TEST

#ifdef TEST

#define V2Log(...) NSLog(@"%@", [NSString stringWithFormat:__VA_ARGS__]);

#else

#define V2Log(...)

#endif

#define RGB(c,a)    [UIColor colorWithRed:((c>>16)&0xFF)/256.0  green:((c>>8)&0xFF)/256.0   blue:((c)&0xFF)/256.0   alpha:a]
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)

#define kDeviceOSVersion ([[[UIDevice currentDevice] systemVersion] floatValue])

#define AppDelegate ((V2AppDelegate *)[UIApplication sharedApplication].delegate)

