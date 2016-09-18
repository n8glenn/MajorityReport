//
//  ViewController.m
//  MajorityReport
//
//  Created by Nate Glenn on 9/16/16.
//  Copyright © 2016 Nate Glenn. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSError *setCategoryError = nil;
    
    /* Set the audio session category to allow for playback/recording and mixing */
    BOOL setCategorySuccess = [[AVAudioSession sharedInstance]
                               setCategory:AVAudioSessionCategoryPlayAndRecord
                               withOptions: AVAudioSessionCategoryOptionMixWithOthers
                               error:&setCategoryError];
    
    if (setCategorySuccess == NO) { /* handle error here */ }
    
    
    NSError *activationError = nil;
    
    /* Activate the audio session */
    BOOL activationResult = [[AVAudioSession sharedInstance] setActive: YES
                                                                 error: &activationError];
    
    if (activationResult == NO)
    { /* handle the error here */
        NSLog(@"activation failed...");
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
