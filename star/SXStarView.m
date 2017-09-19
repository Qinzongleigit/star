//
//  SXStarView.m
//  star
//
//  Created by qin on 2017/9/19.
//  Copyright © 2017年 qin. All rights reserved.
//

#import "SXStarView.h"

@implementation SXStarView


- (instancetype)initWithFrame:(CGRect)frame andStarNum: (float)statNum
{
    if ([super initWithFrame:frame])
    {
        CGFloat width = self.frame.size.width/5;
        for (NSInteger  i = 0; i<5; i++)
        {
            UIImageView * starImg = [[UIImageView alloc]initWithFrame:CGRectMake(width *i, 0, width, width)];
            //灰色星星
            starImg.image = [UIImage imageNamed:@"ico_star"];
            [self addSubview:starImg];
            UIImageView * starImg1 = [[UIImageView alloc]initWithFrame:CGRectMake(width *i, 0, width, width)];
            //实心星星
            starImg1.image = [UIImage imageNamed:@"ico_star1"];
            starImg1.hidden = YES;
            [self addSubview:starImg1];
            
            UIImageView * starImg2 = [[UIImageView alloc]initWithFrame:CGRectMake(width *i, 0, width, width)];
            //半星星星
            starImg2.image = [UIImage imageNamed:@"ico_star3"];
            starImg2.hidden = YES;
            [self addSubview:starImg2];
            
            if (i<statNum)
            {
                if(statNum == i+0.5)
                {
                    starImg2.hidden = NO;
                    
                }
                else
                {
                    starImg1.hidden = NO;
                }
                
            }
            
        }
        
    }
    return self;
}

@end
