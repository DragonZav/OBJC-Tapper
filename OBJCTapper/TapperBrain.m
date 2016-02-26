//
//  TapperBrain.m
//  OBJCTapper
//
//  Created by Chris Augg on 2/25/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import "TapperBrain.h"

@interface TapperBrain ()

// Private to class
@property(nonatomic) int maxTaps;
@property(nonatomic) int currentTaps;

@end

@implementation TapperBrain

-(void)setMaxTaps:(int)maxTaps {
    if (maxTaps >= 0) {
        _maxTaps = maxTaps;
    }
}

-(void)initializeCurrentTapsWithZero {
   _currentTaps = 0;
}

-(int)getCurrentTaps {
    return _currentTaps;
}

-(void)incrementCurrentTaps {
    _currentTaps++;
}

-(BOOL)isGameOver {
    
    if (_currentTaps >= _maxTaps) {
        return YES;
    } else {
        return NO;
    }
}

@end
