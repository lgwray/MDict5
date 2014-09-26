//
//  ProcessString.h
//  LearningJapanese
//
//  Created by Cong on 29/07/2014.
//  Copyright (c) 2014 Cong. All rights reserved.
//

// this class is write to process input string from kanji search result. it turn the string in to 4 basic feilds: kunyomi, onyomi, strokes and vietnamese.

#import <Foundation/Foundation.h>

@interface ProcessString : NSObject

@property (nonatomic) NSString *onyomi;
@property (nonatomic) NSString *kunyomi;
@property (nonatomic) NSString *strokes;
@property (nonatomic) NSString *vietnamese;


- (id)initWithInputString: (NSString *) input;

@end
