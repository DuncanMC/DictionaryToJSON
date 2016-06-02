//
//  NSDictionary+JSON.h
//  Simon
//
//  Created by Duncan Champney on 6/2/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

+ (NSDictionary *) dictionaryFromJSONString: (NSString *) theJSONString;
- (NSString *) jsonString;

@end
