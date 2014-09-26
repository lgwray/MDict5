//
//  ProcessString.m
//  LearningJapanese
//
//  Created by Cong on 29/07/2014.
//  Copyright (c) 2014 Cong. All rights reserved.
//

#import "ProcessString.h"

@implementation ProcessString

- (id)initWithInputString:(NSString *)input{
    if (self = [super init]){
        NSRange r0 = [input rangeOfString:@"Bộ: "];
        NSRange r1 = [input rangeOfString:@"Số nét: "];
        NSRange r2 = [input rangeOfString:@"音読み: "];
        NSRange r3 = [input rangeOfString:@"訓読み: "];
        NSRange r4 = [input rangeOfString:@"Hán Phồn thể: "];
        
        self.vietnamese = [input substringWithRange:NSMakeRange(4, r0.location - 5)];
        self.strokes = [input substringWithRange:NSMakeRange(r1.location + 8, r2.location - r1.location -9)];
        self.onyomi = [input substringWithRange:NSMakeRange(r2.location + 5, r3.location - r2.location - 6)];
        self.kunyomi = [input substringWithRange:NSMakeRange(r3.location + 5, r4.location - r3.location - 6)];
    }
    
    return self;
}


@end
