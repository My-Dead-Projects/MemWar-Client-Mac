#import <SpriteKit/SpriteKit.h>

@interface CoreScene : SKScene

//@property(nonatomic, strong) SKLabelNode *testLabel;
@property(nonatomic, strong) NSMutableArray *instr;

- (void)setInstructionAt:(int)index toOpcode:(char *)opcode l:(int)l r:(int)r;

@end
