//
//  WWViewController.h
//  Women Who Code Sincerely
//
//  Created by Romy on 4/12/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Sincerely/Sincerely.h>
#import <Sincerely/SincerelyConstants.h>
#import "ConsumerCredentials.h"


@interface WWViewController : UIViewController <SYSincerelyControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *chooseButton;
@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;
- (IBAction)sincerelyButtonPressed:(UIButton *)sender;

@end
