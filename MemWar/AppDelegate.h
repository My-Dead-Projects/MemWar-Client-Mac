#import <Cocoa/Cocoa.h>
#import <SpriteKit/SpriteKit.h>
#import "GameController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    CoreScene *scene;
    GameController *gameController;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet SKView *view;

@end
