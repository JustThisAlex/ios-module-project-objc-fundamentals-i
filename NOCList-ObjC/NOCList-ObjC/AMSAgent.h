//
//  AMSAgent.h
//  NOCList-ObjC
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Alexander Supe. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AMSAgent : NSObject

@property (nonatomic, readonly, copy)NSString *coverName;
@property (nonatomic, readonly, copy)NSString *realName;
@property (nonatomic, readonly)NSNumber *accessLevel;
@property (nonatomic, readonly)NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName
                         realName:(NSString *)realName
                      accessLevel:(int)accessLevel
                      compromised:(BOOL)compromised;

@end

NS_ASSUME_NONNULL_END
