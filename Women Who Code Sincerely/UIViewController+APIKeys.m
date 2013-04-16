//
//  UIViewController+APIKeys.m
//  Women Who Code Sincerely
//
//  Created by Romy on 4/14/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import "UIViewController+APIKeys.h"

@implementation UIViewController (APIKeys)
-(BOOL)hasValidAviaryAPIKey {
    NSString *key = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Aviary-API-Key"];
    if ([key isEqualToString:@"<YOUR_API_KEY>"]) {
        [[[UIAlertView alloc] initWithTitle:@"Oops!"
                                    message:@"You forgot to add your API Key!"
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil] show];
        return NO;
    }
    return YES;
}

-(BOOL)hasValidFilepickerAPIKey {
    NSString *key = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Filepicker API Key"];
    if([key isEqualToString:@"<YOUR_API_KEY>"]) {
        [[[UIAlertView alloc] initWithTitle:@"Oops!"
                                    message:@"You forgot to add your Filepicker API Key"
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil] show];
        return NO;
    }
    return YES;
}
@end
