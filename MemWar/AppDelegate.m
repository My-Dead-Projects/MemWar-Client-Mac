#import "AppDelegate.h"
#import "CoreScene.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    /* Pick a size for the scene */
    scene = [CoreScene sceneWithSize:CGSizeMake(1024, 768)];
    
    /* Set the scale mode to scale to fit the window */
    scene.scaleMode = SKSceneScaleModeAspectFit;
    
    self.view.showsFPS = NO;
    self.view.showsNodeCount = NO;
    self.view.showsDrawCount = NO;
    
    gameController = [[GameController alloc] initWithScene:scene];
    
    [gameController initializeScene];
    
    [self.view presentScene:scene];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

- (void)applicationWillTerminate:(NSNotification *)notification {
    [gameController cleanup];
}

@end
