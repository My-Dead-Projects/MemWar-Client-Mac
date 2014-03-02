#import <Foundation/Foundation.h>
#import "CoreScene.h"
#include <Ruby/Ruby.h>

@interface GameController : NSObject {
    CoreScene *scene;
    
    VALUE game;
}

- (id)initWithScene:(CoreScene *)scene;

- (void)initializeScene;

- (void)initializeGame;

- (void)cleanup;

@end
