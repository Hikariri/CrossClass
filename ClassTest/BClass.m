//
//  BClass.m
//  ClassTest
//
//  Created by Lin Lin on 2017/1/10.
//  Copyright © 2017年 Lin Lin. All rights reserved.
//

#import "BClass.h"

@implementation BClass

@synthesize MUarray;

AppDelegate         *AppDeleGet ;
int                 SetUP       ;

-(void)awakeFromNib{
    
    AppDeleGet   = (AppDelegate *)[NSApplication sharedApplication].delegate;
    
    MUarray      =  [[NSMutableArray alloc]init];
    SetUP        =  0 ;
//    NSButton    *ButtonSetClass =   [[NSButton   alloc]initWithFrame:CGRectMake(10, 500, 200, 30) ];
//    [ButtonSetClass setTitle:@"Push"];
//    ButtonSetClass.target=self;
//    ButtonSetClass.action=@selector(buttonClick);
//    [AppDeleGet.window.contentView addSubview:ButtonSetClass];
}

-(void)buttonClick{
}

- (IBAction)B_Action:(id)sender {
    NSDictionary *datap = @{[NSString stringWithFormat:@"%d",SetUP]:  @"Test",};
    SetUP++;
    [MUarray addObject:datap];
    NSLog(@"MUarray =   %@",MUarray);
}

-(NSMutableArray *)ReturnArray:(NSMutableArray *)Arr{
    return MUarray;
}

-(void)dealloc{
    SetUP--;
}
@end
