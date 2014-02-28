#import "CoreScene.h"

@implementation CoreScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        
        SKLabelNode *labels[1024];
        
        for (int i = 0; i < 1024; i++) {
            labels[i] = [SKLabelNode labelNodeWithFontNamed:@"Consolas"];
            labels[i].text = [NSString stringWithFormat:@"nop"];
            labels[i].fontSize = 15;
            labels[i].position = CGPointMake(15+30*(i/64), (760*(i/64+1)-i*12+8*i/64)-5);
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
