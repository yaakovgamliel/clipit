//
//  main.m
//  Pastie
//
//  Created by Yaakov Gamliel on 9/21/16.
//  Copyright © 2016 Yaakov Gamliel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#define PARAM_ERROR 255

int main(int argc, const char * argv[]) {
    
    if (argc < 2) {
        return PARAM_ERROR;
    }
    
    @autoreleasepool {
        
        NSPasteboard *pasteboard = [NSPasteboard generalPasteboard];
        [pasteboard clearContents];
        
        NSString *stuff = [NSString stringWithUTF8String:argv[1]];
        [pasteboard writeObjects:@[stuff]];
   }
    
    return 0;
}
