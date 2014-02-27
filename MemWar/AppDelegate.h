#import <Cocoa/Cocoa.h>
#import <SpriteKit/SpriteKit.h>
#import "CoreView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet CoreView *view;

@end
