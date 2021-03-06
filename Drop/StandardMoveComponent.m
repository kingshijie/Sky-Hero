//
//  StandardMoveComponent.m
//  Drop
//
//  Created by Aaron on 12-10-14.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "StandardMoveComponent.h"

@implementation StandardMoveComponent
+(id)instanceWithEndPosition:(CGPoint)theEndPosiotion
{
    return [[[self alloc]initWithEndPosition:theEndPosiotion] autorelease];
}

-(id)initWithEndPosition:(CGPoint)theEndPosition
{
    if(self = [super init])
    {
        endPosition = theEndPosition;
        duration = 10;
    }
    return self;
}

-(CCAction*)move
{
    CCMoveTo *move = [CCMoveTo actionWithDuration:duration position:endPosition];
    return move;
}

-(id) copyWithZone:(NSZone *)zone
{
    StandardMoveComponent * moveCopy;
    moveCopy = [super copyWithZone:zone];
    moveCopy->endPosition = endPosition;
    return moveCopy;
}
@end
