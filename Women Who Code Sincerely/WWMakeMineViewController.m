//
//  WWMakeMineViewController.m
//  Women Who Code Sincerely
//
//  Created by Romy on 4/12/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import "WWMakeMineViewController.h"

@interface WWMakeMineViewController ()

@end

@implementation WWMakeMineViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - IBAction Methods

-(IBAction)sincerelyButtonPressed:(UIButton *)sender {
    if(_myPhoto.image) {
        SYSincerelyController *sincerelyController = [[SYSincerelyController alloc]
                                                      initWithImages:[NSArray arrayWithObject:_myPhoto.image]
                                                                                           product:SYProductTypePostcard
                                                                                    applicationKey:kSincerelyAPIKey
                                                      
                                                                                          delegate:self];
        if (sincerelyController) {
            [self presentViewController:sincerelyController animated:YES completion:NULL];
            
        }
    } else {
     
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops!"
                                                        message:@"Choose a Photo!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        [alert show];
    }
 }

-(IBAction)choosePhotoButtonPressed:(UIButton *)sender {
    FPPickerController *fpController =[[FPPickerController alloc] init];
    fpController.fpdelegate=self;
    fpController.dataTypes=[NSArray arrayWithObjects:@"image/*", nil];
    //fpController.dataTypes = [NSArray arrayWithObjects:@"image/*", @"video/quicktime", nil];
    /*
     * Select and order the sources (Optional) Default is all sources
     */
    //fpController.sourceNames = [[NSArray alloc] initWithObjects: FPSourceImagesearch, nil];
    
    /*
     * Display it.
     */
    
    [self presentViewController:fpController
                       animated:YES
                     completion:nil];

    
}

#pragma mark -
#pragma mark - SYSincerelyControllerDelegate
-(void)sincerelyControllerDidFinish:(SYSincerelyController *)controller {
    /*
     * Here I know that the user made a purchase and I can do something with it
     */
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(void)sincerelyControllerDidCancel:(SYSincerelyController *)controller {
    /*
     *  Here I know that the user hit the cancel button and they want to leave the Sincerely Controller
     */
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(void)sincerelyControllerDidFailInitiationWithError:(NSError *)error {
    /*
     *  Here I know that incorrect inputs were given to initWithImages:product:applicationKey:delegate
     */
    
    NSLog(@"Error: %@", error);
}

#pragma mark -
#pragma mark - FPPickerControllerDelegate Methods
-(void)FPPickerController:(FPPickerController *)picker didPickMediaWithInfo:(NSDictionary *)info {
    
}

-(void)FPPickerController:(FPPickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    // after the user picked the photo
    _myPhoto.image = [info objectForKey:@"FPPickerControllerOriginalImage"];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)FPPickerControllerDidCancel:(FPPickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
