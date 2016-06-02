//
//  AppDelegate.m
//  DictionaryToJSON
//
//  Created by Duncan Champney on 6/2/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

#import "AppDelegate.h"
#import "NSDictionary+JSON.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void) doJSONTest;
{
  NSDictionary *testDict = @{@"Key1": @"Value1",
                             @"Int1": @(1),
                             @"Float1": @(M_PI)
                             };
  NSString *theJSONString = testDict.jsonString;
  NSLog(@"Dict JSON string = %@", theJSONString);

}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [self doJSONTest];
  return YES;
}


@end
