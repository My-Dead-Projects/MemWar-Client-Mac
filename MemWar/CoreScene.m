#import "CoreScene.h"

@implementation CoreScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1.0];
        
        SKLabelNode *labels[1024];
        NSString *labelFont = @"Consolas";
        SKSpriteNode *sprites[16];
        SKColor *spriteColor = [SKColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        CGSize spriteSize = CGSizeMake(63, 768);
        
        for (int i = 0; i < 16; i++) {
            sprites[i] = [SKSpriteNode spriteNodeWithColor:spriteColor size:spriteSize];
            sprites[i].position = CGPointMake(32+64*i, 384);
            [self addChild:sprites[i]];
        }
        
        for (int i = 0; i < 1024; i++) {
            labels[i] = [SKLabelNode labelNodeWithFontNamed:labelFont];
            labels[i].text = [NSString stringWithFormat:@"NOP %x %x", 0, 0];
            labels[i].fontSize = 15;
            labels[i].position = CGPointMake(32+64*(i/64), (760*(i/64+1)-i*12+8*i/64)-6);
            [self addChild:labels[i]];
        }
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
