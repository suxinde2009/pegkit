//
//  PKNodeReference.m
//  ParseKit
//
//  Created by Todd Ditchendorf on 10/4/12.
//
//

#import "PKReferenceNode.h"
#import <PEGKit/PKToken.h>

@implementation PKReferenceNode

- (void)dealloc {
    [super dealloc];
}


- (NSUInteger)type {
    return PKNodeTypeReference;
}


- (NSString *)name {
    NSString *str = [NSString stringWithFormat:@"#%@", self.token.stringValue];
    return str;
}


- (void)visit:(id <PGNodeVisitor>)v; {
    [v visitReference:self];
}


- (BOOL)isTerminal {
    NSAssert2(0, @"%s is an abastract method. Must be overridden in %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
    return NO;
}

@end
