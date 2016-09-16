//
//  AppDelegate.h
//  MajorityReport
//
//  Created by Nate Glenn on 9/16/16.
//  Copyright © 2016 Nate Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

