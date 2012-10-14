//
//  ViewController.m
//  DKSample
//
//  Created by Ado Nishimura on 2012/10/13.
//  Copyright (c) 2012年 adonishi. All rights reserved.
//

#import "ViewController.h"
#import "TileOverlay/TileOverlay.h"
#import "TileOverlay/TileOverlayView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize overlay;

- (void)viewDidLoad
{
    [super viewDidLoad];

    overlay = [[TileOverlay alloc] initOverlay];
    [map addOverlay:overlay];

    MKMapRect visibleRect = [map mapRectThatFits:overlay.boundingMapRect];
    map.visibleMapRect = visibleRect;
    visibleRect.size.width /= 2;
    visibleRect.size.height /= 2;
    visibleRect.origin.x += visibleRect.size.width / 2;
    visibleRect.origin.y += visibleRect.size.height / 2;
    map.visibleMapRect = visibleRect;

    // center to Fuji-san.
    MKCoordinateSpan span = MKCoordinateSpanMake(4.0, 4.0);
    CLLocationCoordinate2D centerCoordinate = { 35.360628, 138.727365 };
    MKCoordinateRegion coordinateRegion =
    MKCoordinateRegionMake(centerCoordinate, span);
    [map setRegion:coordinateRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)ovl
{
    TileOverlayView *view = [[TileOverlayView alloc] initWithOverlay:ovl];
    view.tileAlpha = 1.0; // e.g. 0.6 alpha for semi-transparent overlay
    return view;
}

@end
