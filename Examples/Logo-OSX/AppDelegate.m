//
//  AppDelegate.m
//  Logo-OSX
//
//  Created by Paulo F. Andrade on 27/08/15.
//
//

#import "AppDelegate.h"
#import <FBShimmering/FBShimmering.h>

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet FBShimmeringView *shimmeringView;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _shimmeringView.shimmering = YES;
    _shimmeringView.shimmeringBeginFadeDuration = 0.3;
    _shimmeringView.shimmeringOpacity = 0.3;
    
    NSTextField *_logoLabel = [[NSTextField alloc] initWithFrame:_shimmeringView.bounds];
    _logoLabel.editable = NO;
    _logoLabel.bordered = NO;
    _logoLabel.stringValue = @"Shimmer";
    _logoLabel.font = [NSFont fontWithName:@"HelveticaNeue-UltraLight" size:35.0];
    _logoLabel.textColor = [NSColor whiteColor];
    _logoLabel.alignment = NSCenterTextAlignment;
    _logoLabel.drawsBackground = NO;
    _logoLabel.wantsLayer = YES;

    [_shimmeringView setContentView:_logoLabel];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
