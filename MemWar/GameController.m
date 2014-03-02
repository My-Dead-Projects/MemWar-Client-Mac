#import "GameController.h"

@implementation GameController

- (id)initWithScene:(CoreScene *)aScene {
    if (self = [super init]) {
        scene = aScene;
    }
    return self;
}

- (void)initializeScene {
    [self initializeGame];
}

- (void)initializeGame {
    RUBY_INIT_STACK;
    ruby_init();
    ruby_init_loadpath();
    ruby_script("embed");
    NSString *_bundlePath = [[NSBundle mainBundle] bundlePath];
    const char *bundlePath = [_bundlePath fileSystemRepresentation];
    char *gameScriptPath = malloc(strlen(bundlePath)+28);
    snprintf(gameScriptPath, strlen(bundlePath)+28,
             "%s/Contents/Resources/game.rb", bundlePath);
    rb_require(gameScriptPath);
}

@end
