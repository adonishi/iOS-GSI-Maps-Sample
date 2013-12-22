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

- (IBAction)doAbout:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"「地理院地図サンプル」について"
                          message:@"地理院地図 iOS サンプルコード\nhttps://github.com/adonishi/iOS-GSI-Maps-Sample\n\nこの背景地図等データは、国土地理院の電子国土Webシステムから配信されたものであり、その使用に関しては国土地理院の利用規約に従うようお願いします。\n\nこのアプリケーションのコード自身はFreeBSD Licenseとする。\n\"FreeBSD License\" Copyright 2012 DKSample. All rights reserved.\n\n使用したアイコンはCreative Commons Attribution 3.0 United States Licenseである。\nFREE ICONS BY GLYPHISH\nCreated by Joseph Wain, 2012\nWeb: http://glyphish.com or http://penandthink.com\nTwitter: @glyphish or @jpwain"
                          delegate:self
                          cancelButtonTitle:nil
                          otherButtonTitles:@"OK", nil];
    [alert show];
}

- (IBAction)doLocation:(id)sender
{
    [map setUserTrackingMode:MKUserTrackingModeFollow animated:TRUE ];
    map.showsUserLocation = TRUE;
}

@end
