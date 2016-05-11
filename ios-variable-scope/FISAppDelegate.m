//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

/*
 
 * Write your method definitions here.
 
 */


- (NSMutableArray*)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *arrayCopy = [array mutableCopy];  //copy created
                               
    [arrayCopy addObject:string];  //array with string added
    
    return arrayCopy;  //returning array
    
}
//returning an array with string added to it.  Array was not modified, a copy was created.


- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSMutableArray *mArray = [array mutableCopy];   //Array has to be defined first.
    
    NSUInteger allCapCount = 0;    // allCapCount used for counting all uppercase objects.

    for (NSUInteger i = 0; i < mArray.count; i++) {   //for loop iterates over array.
        
        NSString *capitalizedString = [mArray[i] uppercaseString]; //string is capitalizing objects in array.
        
        if ([capitalizedString isEqualToString: mArray[i]]) {
            
            allCapCount ++;
        }
    }
    return allCapCount;
}

- (void) removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects]; //empties array of objects
}


@end
