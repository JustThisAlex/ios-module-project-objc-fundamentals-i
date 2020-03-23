//
//  main.m
//  NOCList-ObjC
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Alexander Supe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMSAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        AMSAgent *a1 = [[AMSAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:false];
        AMSAgent *a2 = [[AMSAgent alloc] initWithCoverName: @"Jim Phelps" realName: @"Jon Voight" accessLevel:9 compromised:true];
        AMSAgent *a3 = [[AMSAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:false];
        AMSAgent *a4 = [[AMSAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:true];
        AMSAgent *a5 = [[AMSAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:false];
        AMSAgent *a6 = [[AMSAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:false];
        AMSAgent *a7 = [[AMSAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott " accessLevel:5 compromised:true];
        AMSAgent *a8 = [[AMSAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:false];
        AMSAgent *a9 = [[AMSAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:5 compromised:true];
        AMSAgent *a10 = [[AMSAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:true];
        AMSAgent *a11 = [[AMSAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:false];
        NSArray *agents = [[NSArray alloc] initWithObjects:a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, nil];
        
        int i = 0;
        for (AMSAgent *agent in agents) {
            if (agent.compromised.boolValue == true) {
                i++;
                if (agent.accessLevel.intValue >= 8) {
                    NSLog(@"%@, level: %d **WARNING** **COMPROMISED**", agent.realName, agent.accessLevel.intValue);
                }
            } else {
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        NSLog(@"Compromised: %d", i);
        NSLog(@"Clean: %lu", agents.count - i);
        
        int low = 0;
        int mid = 0;
        int high = 0;
        for (AMSAgent *agent in agents) {
            if (agent.accessLevel.intValue <= 4) {
                low++;
            } else if (agent.accessLevel.intValue >= 5 && agent.accessLevel.intValue <= 7) {
                mid++;
            } else if (agent.accessLevel.intValue >= 8) {
                high++;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", low, mid, high);
    }
    return 0;
}
