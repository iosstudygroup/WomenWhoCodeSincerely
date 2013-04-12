//
//  WWViewController.m
//  Women Who Code Sincerely
//
//  Created by Romy on 4/12/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import "WWViewController.h"

@interface WWViewController ()

@end

@implementation WWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sincerelyButtonPressed:(UIButton *)sender {
    
    SYSincerelyController *sincerelyController = [[SYSincerelyController alloc] initWithImages:[NSArray arrayWithObject:[UIImage imageNamed:@"computers.jpeg.png"]]
                                                                              product:SYProductTypePostcard
                                                                       applicationKey:kSincerelyAPIKey
        
                                                                             delegate:self];
    if (sincerelyController) {
        [self presentViewController:sincerelyController animated:YES completion:NULL];
    
    }
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

@end
