//
//  WWFilterViewController.m
//  Women Who Code Sincerely
//
//  Created by Romy on 4/14/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import "WWFilterViewController.h"


@interface WWFilterViewController ()

@end

@implementation WWFilterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editButtonPressed:(UIButton *)sender {
    if([self hasValidAviaryAPIKey]) {
        AFPhotoEditorController *editorController = [[AFPhotoEditorController alloc] initWithImage:self.myPhoto.image];
        [editorController setDelegate:self];
        [self presentViewController:editorController animated:YES completion:nil];
    }
}

#pragma mark -
#pragma mark - AFPhotoEditorControllerDelegate

-(void)photoEditor:(AFPhotoEditorController *)editor finishedWithImage:(UIImage *)image {
    // handle image result here
    self.myPhoto.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)photoEditorCanceled:(AFPhotoEditorController *)editor {
    // handle cancellation here
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
