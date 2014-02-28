#import "CoreScene.h"

@implementation CoreScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
        
        SKLabelNode *labels[1024];
        
        for (int i = 0; i < 1024; i++) {
            labels[i] = [SKLabelNode labelNodeWithFontNamed:@"Consolas"];
            labels[i].text = @"nop";
            labels[i].fontSize = 40;
            labels[i].position = CGPointMake(35, 740-(i*35));
            [self addChild:labels[i]];
        }
    }
    return self;
}

-(void)mouseDown:(NSEvent *)theEvent {
     /* Called when a mouse click occurs */
    
//    CGPoint location = [theEvent locationInNode:self];
//    
//    SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//    
//    sprite.position = location;
//    sprite.scale = 0.5;
//    
//    SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//    
//    [sprite runAction:[SKAction repeatActionForever:action]];
//    
//    [self addChild:sprite];
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
