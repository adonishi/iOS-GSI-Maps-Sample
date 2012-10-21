//
//  ViewController.h
//  DKSample
//
//  Created by Ado Nishimura on 2012/10/13.
//  Copyright (c) 2012年 adonishi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TileOverlay/TileOverlay.h"

@interface ViewController : UIViewController <MKMapViewDelegate> {
    IBOutlet MKMapView *map;
    IBOutlet UIBarButtonItem *about;
    IBOutlet UIBarButtonItem *currentLocation;
}
@property (nonatomic, retain) TileOverlay *overlay;
- (IBAction)doAbout:(id)sender;
- (IBAction)doLocation:(id)sender;
@end
