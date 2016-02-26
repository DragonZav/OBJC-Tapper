//
//  ViewController.m
//  OBJCTapper
//
//  Created by Chris Augg on 2/25/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import "ViewController.h"
#import "TapperBrain.h"

@interface ViewController ()

@property(nonatomic) TapperBrain *myTapperBrain;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _myTapperBrain = [[TapperBrain alloc]init];
    
}

- (IBAction)onCoinTapped:(id)sender {
   
    [_myTapperBrain incrementCurrentTaps];
    [self updateTapsLbl];
    
    if (_myTapperBrain.isGameOver) {
       
        [self restartGame];
    }
    
}


- (IBAction)onPlayBtnPressed:(id)sender {
    
    if (_howManyTapsTxt.text != Nil && ![_howManyTapsTxt.text isEqualToString:@""]) {
        _logoImg.hidden = YES;
        _playBtn.hidden = YES;
        _howManyTapsTxt.hidden = YES;
        
        _tapBtn.hidden = NO;
        _tapsLbl.hidden = NO;
        
        _myTapperBrain.maxTaps = _howManyTapsTxt.text.intValue;
        [_myTapperBrain initializeCurrentTapsWithZero];
        
        [self updateTapsLbl];

        
    }
    
}

-(void)restartGame {
    
    _myTapperBrain.maxTaps = 0;
    _howManyTapsTxt.text = [NSString stringWithFormat:@""];
    _logoImg.hidden = NO;
    _playBtn.hidden = NO;
    _howManyTapsTxt.hidden = NO;
    
    _tapBtn.hidden = YES;
    _tapsLbl.hidden = YES;
}


-(void)updateTapsLbl {
    
    _tapsLbl.text = [NSString stringWithFormat:@"%d", _myTapperBrain.getCurrentTaps];
    
}

@end
