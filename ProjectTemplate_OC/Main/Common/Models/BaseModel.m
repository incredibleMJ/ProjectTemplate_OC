//
//  BaseModel.m
//  BaseProject
//
//  Created by Albert on 16/3/14.
//  Copyright © 2016年 IncredibleMJ. All rights reserved.
//

#import "BaseModel.h"

#define YYModelSynthCoderAndHash \
- (void)encodeWithCoder:(NSCoder *)aCoder { [self yy_modelEncodeWithCoder:aCoder]; } \
- (id)initWithCoder:(NSCoder *)aDecoder { return [self yy_modelInitWithCoder:aDecoder]; } \
- (id)copyWithZone:(NSZone *)zone { return [self yy_modelCopy]; } \
- (NSUInteger)hash { return [self yy_modelHash]; } \
- (BOOL)isEqual:(id)object { return [self yy_modelIsEqual:object]; }

@implementation BaseModel

YYModelSynthCoderAndHash

@end
