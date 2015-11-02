//
//  AppDelegate.m
//  3dTouchDemo
//
//  Created by hanxu on 15/10/9.
//  Copyright © 2015年 hanxu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //添加3dTouch
    UIApplicationShortcutIcon *iconShare = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeShare];
    UIApplicationShortcutItem *itme1 = [[UIApplicationShortcutItem alloc] initWithType:@"1" localizedTitle:@"分享" localizedSubtitle:nil icon:iconShare userInfo:nil];
    
    UIApplicationShortcutIcon *iconCompose = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose];
    UIApplicationShortcutItem *item2 = [[UIApplicationShortcutItem alloc] initWithType:@"2" localizedTitle:@"发送" localizedSubtitle:nil icon:iconCompose userInfo:nil];
    
    UIApplicationShortcutIcon *iconPlay = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay];
    UIApplicationShortcutItem *item3 = [[UIApplicationShortcutItem alloc] initWithType:@"3" localizedTitle:@"播放" localizedSubtitle:nil icon:iconPlay userInfo:nil];
    
    application.shortcutItems = @[itme1, item2, item3];
    
    return YES;
}

///  3dTouch跳转
///
///  @param application       application
///  @param shortcutItem      items
///  @param completionHandler handler
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    
    int type = [shortcutItem.type intValue];
    switch (type) {
        case 1:
            NSLog(@"分享按钮被点击");
            break;
        case 2:
            NSLog(@"发送按钮被点击");
            break;
        case 3:
            NSLog(@"播放按钮被点击");
            break;
    }
    
}


@end
