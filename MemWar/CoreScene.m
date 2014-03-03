#import "CoreScene.h"

@implementation CoreScene

//@synthesize testLabel;
@synthesize instr;

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1.0];
        
        SKSpriteNode *sprites[16];
        SKColor *spriteColor = [SKColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        CGSize spriteSize = CGSizeMake(63, 768);
        
        for (int i = 0; i < 16; i++) {
            sprites[i] = [SKSpriteNode spriteNodeWithColor:spriteColor size:spriteSize];
            sprites[i].position = CGPointMake(32+64*i, 384);
            [self addChild:sprites[i]];
        }
        
        for (int i = 0; i < 1024; i++) {
            SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Consolas"];
            label.text = [NSString stringWithFormat:@"%s %x %x", "nop", 0, 0];
            label.fontSize = 15;
            label.position = CGPointMake(32+64*(i/64), (760*(i/64+1)-i*12+8*i/64)-6);
            [self addChild:label];
            [instr addObject:label];
        }
        
//        testLabel = [SKLabelNode labelNodeWithFontNamed:@"Consolas"];
//        testLabel.text = @"Test String";
//        testLabel.fontSize = 50;
//        testLabel.position = CGPointMake(512, 384);
//        [self addChild:testLabel];
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    
}

- (void)setInstructionAt:(int)index toOpcode:(char *)opcode l:(int)l r:(int)r {
    
    [[self.instr objectAtIndex:index] setText:[NSString stringWithFormat:@"%s %x %x", opcode,l, r]];
    
}

@end
