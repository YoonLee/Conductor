//
//  CDSuperLongTaskOperation.m
//  Conductor
//
//  Created by Andrew Smith on 12/12/12.
//  Copyright (c) 2012 Andrew B. Smith. All rights reserved.
//

#import "CDSuperLongTaskOperation.h"

@implementation CDSuperLongTaskOperation

- (void)start {
    @autoreleasepool {
        
        [super start];
        
        NSLog(@"Starting super long operation");
        
        // Slightly longer than the permitted 10 minutes
        for (int i=0; i < 620; i++) {
            NSLog(@"time: %i", i);
            sleep(1);
        }
        
        NSLog(@"Finishing super long operation");
        
        [self finish];
    }
}

@end
