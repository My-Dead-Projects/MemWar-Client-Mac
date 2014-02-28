#import <Cocoa/Cocoa.h>
#import <SpriteKit/SpriteKit.h>
#import "CoreView.h"
#import "GameController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    CoreScene *scene;
    GameController *gameController;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet CoreView *view;

@end
