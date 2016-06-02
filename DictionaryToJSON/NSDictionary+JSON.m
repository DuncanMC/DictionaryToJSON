//
//  NSDictionary+JSON.m
//  Simon
//
//  Created by Duncan Champney on 6/2/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

#import "NSDictionary+JSON.h"

 NSString *quote = @"\"";

 NSString *escapedQuote = @"\\\"";

@implementation NSDictionary (JSON)

+ (NSDictionary *) dictionaryFromJSONString: (NSString *) theJSONString;
{
  NSLog(@"JSON String = %@", theJSONString);
  theJSONString = [theJSONString stringByReplacingOccurrencesOfString: escapedQuote
                                                           withString: quote];
  NSError *error;
  NSData *theJSONData = [theJSONString dataUsingEncoding: NSUTF8StringEncoding];
  NSDictionary *result = [NSJSONSerialization JSONObjectWithData: theJSONData
                                                         options: 0
                                                           error: &error];
  if (result == nil)
  {
    NSLog(@"Error converting JSON string to dictionary. Error = %@", error.localizedDescription);
    return nil;
  }
  return result;
}

//------------------------------------------------------------------------------------------------

- (NSString *) jsonString;
{
  NSError *error;
  NSData *theJSONData = [NSJSONSerialization dataWithJSONObject: self
                                                        options: 0
                                                          error: &error];
  if (theJSONData == nil)
  {
    NSLog(@"Error converting dictionary to JSON. Error = %@", error.localizedDescription);
    return nil;
  }
  NSString *result = [[NSString alloc] initWithData: theJSONData
                                           encoding: NSUTF8StringEncoding];
  result = [result stringByReplacingOccurrencesOfString: quote
                                                           withString: escapedQuote];
  return result;
}

@end
