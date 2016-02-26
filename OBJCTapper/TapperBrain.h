//
//  TapperBrain.h
//  OBJCTapper
//
//  Created by Chris Augg on 2/25/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TapperBrain : NSObject

-(void)incrementCurrentTaps;
-(void)initializeCurrentTapsWithZero;
-(void)setMaxTaps:(int)maxTaps;
-(int)getCurrentTaps;
-(BOOL)isGameOver;
@end
