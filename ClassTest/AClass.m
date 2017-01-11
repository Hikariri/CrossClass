//
//  AClass.m
//  ClassTest
//
//  Created by Lin Lin on 2017/1/10.
//  Copyright © 2017年 Lin Lin. All rights reserved.
//

#import "AClass.h"
#import "BClass.h"

@implementation AClass

BClass  *BCLS;

-(void)awakeFromNib{
    BCLS    =    (BClass *)[NSApplication sharedApplication].delegate;
}
- (IBAction)A_Action:(id)sender {
    NSMutableArray  *ArrayX =   [[NSMutableArray alloc]init];
    ArrayX  =   [BCLS.MUarray mutableCopy];
    NSLog(@"Arr = %@",ArrayX);
}

@end
