#import <SpriteKit/SpriteKit.h>

@interface CoreScene : SKScene {
    SKLabelNode *instructions[1024];
}

- (SKLabelNode *)instructionAt:(int)index;
- (void)setInstructionAt:(int)index to:(SKLabelNode *)value;

@end
