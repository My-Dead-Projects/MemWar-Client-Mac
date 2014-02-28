#import <Foundation/Foundation.h>
#import "CoreScene.h"

@interface GameController : NSObject {
    CoreScene *scene;
}

- (id)initWithScene:(CoreScene *)scene;

- (void)initializeScene;

@end
