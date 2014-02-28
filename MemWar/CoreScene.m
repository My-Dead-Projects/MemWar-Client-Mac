#import "CoreScene.h"

@implementation CoreScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1.0];
        
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
            instructions[i] = [SKLabelNode labelNodeWithFontNamed:labelFont];
            instructions[i].text = [NSString stringWithFormat:@"NOP %x %x", 0, 0];
            instructions[i].fontSize = 15;
            instructions[i].position = CGPointMake(32+64*(i/64), (760*(i/64+1)-i*12+8*i/64)-6);
            [self addChild:instructions[i]];
        }
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

- (SKLabelNode *)instructionAt:(int)index {
    if (index < 1024) {
        return instructions[index];
    } else {
        @throw [NSException exceptionWithName:@"OutOfBoundsException"
                            reason:[NSString stringWithFormat:@"Index (%d) is out of bounds", index]
                            userInfo:nil];
    }
}

- (void)setInstructionAt:(int)index to:(SKLabelNode *)value {
    if (index < 1024) {
        instructions[index] = value;
    } else {
        @throw [NSException exceptionWithName:@"OutOfBoundsException"
                            reason:[NSString stringWithFormat:@"Index (%d) is out of bounds", index]
                            userInfo:nil];
    }
}

@end
