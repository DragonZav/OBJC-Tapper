//
//  ViewController.h
//  OBJCTapper
//
//  Created by Chris Augg on 2/25/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@property (weak, nonatomic) IBOutlet UIImageView *logoImg;
@property (weak, nonatomic) IBOutlet UITextField *howManyTapsTxt;
@property (weak, nonatomic) IBOutlet UIButton *playBtn;

@property (weak, nonatomic) IBOutlet UIButton *tapBtn;
@property (weak, nonatomic) IBOutlet UILabel *tapsLbl;

@end

