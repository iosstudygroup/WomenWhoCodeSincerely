//
//  WWMakeMineViewController.h
//  Women Who Code Sincerely
//
//  Created by Romy on 4/12/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Sincerely/Sincerely.h>
#import <Sincerely/SincerelyConstants.h>
#import "ConsumerCredentials.h"
#import <FPPicker/FPPicker.h>


@interface WWMakeMineViewController : UIViewController <SYSincerelyControllerDelegate, FPPickerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *chooseButton;
@property (weak, nonatomic) IBOutlet UIButton *makePostCard;
@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;
- (IBAction)sincerelyButtonPressed:(UIButton *)sender;
- (IBAction)choosePhotoButtonPressed:(UIButton *)sender;
@end
