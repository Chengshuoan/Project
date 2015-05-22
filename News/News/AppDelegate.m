//
//  AppDelegate.m
//  News
//
//  Created by lanou3g on 15/5/20.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "AppDelegate.h"
#import "ToutiaoViewController.h"
#import "CategoryViewController.h"
#import "PersonalCenterViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
-(void)dealloc
{
    self.splashView = nil;
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
//    self.splashView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
//
//    [self.splashView setImage:[UIImage imageNamed:@"back_"]];
//
//    
//
//    [self.window addSubview:self.splashView];
//
//    [self.window bringSubviewToFront:self.splashView];
//
//    
//
//    
//
//    [self performSelector:@selector(scale_1) withObject:nil afterDelay:0.0f];
//
//    [self performSelector:@selector(scale_2) withObject:nil afterDelay:0.5f];
//
//    [self performSelector:@selector(scale_3) withObject:nil afterDelay:1.0f];
//
//    [self performSelector:@selector(scale_4) withObject:nil afterDelay:1.5f];
//
//    [self performSelector:@selector(scale_5) withObject:nil afterDelay:2.0f];
// 
//    [self performSelector:@selector(showWord) withObject:nil afterDelay:2.5f];
    
    
    
    
    
    ToutiaoViewController * ttVC = [[ToutiaoViewController alloc]init];
    UINavigationController * ttNav = [[UINavigationController alloc]initWithRootViewController:ttVC];
    CategoryViewController * cgVC = [[CategoryViewController alloc]init];
    UINavigationController * cgNav = [[UINavigationController alloc]initWithRootViewController:cgVC];
    PersonalCenterViewController * pcVC = [[PersonalCenterViewController alloc]init];
    UINavigationController * pcNav = [[UINavigationController alloc]initWithRootViewController:pcVC];
    UITabBarController * tbVC = [[UITabBarController alloc]init];
    tbVC.viewControllers = @[ttNav,cgNav,pcNav];
    self.window.rootViewController = tbVC;
    //设置tabBar上的图片
    ttNav.tabBarItem.image = [UIImage imageNamed:@"activity"];
    [tbVC release];
    [pcNav release];
    [cgVC release];
    [cgNav release];
    [ttVC release];
    [ttNav release];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
