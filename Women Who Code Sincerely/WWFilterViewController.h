//
//  WWFilterViewController.h
//  Women Who Code Sincerely
//
//  Created by Romy on 4/14/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import "WWMakeMineViewController.h"
#import "AFPhotoEditorController.h"

@interface WWFilterViewController : WWMakeMineViewController <AFPhotoEditorControllerDelegate>

- (IBAction)editButtonPressed:(UIButton *)sender;

@end
