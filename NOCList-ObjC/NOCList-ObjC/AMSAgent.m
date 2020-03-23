//
//  AMSAgent.m
//  NOCList-ObjC
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Alexander Supe. All rights reserved.
//

#import "AMSAgent.h"

@implementation AMSAgent

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName:(NSString *)realName
                      accessLevel:(int)accessLevel
                      compromised:(BOOL)compromised {
    if (self = [super init]) {
        _coverName = [coverName copy];
        _realName = [realName copy];
        _accessLevel = [NSNumber numberWithInt:accessLevel];
        _compromised = [NSNumber numberWithBool:compromised];
    }
    return self;
}

@end
