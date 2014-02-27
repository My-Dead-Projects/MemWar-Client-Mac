#import "CoreView.h"

@implementation CoreView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      self.showsDrawCount = YES;
      self.showsNodeCount = YES;
      self.showsFPS = YES;
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
	
    // Drawing code here.
}

@end
