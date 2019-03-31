//
//  ArticleDetailsViewController.h
//  NYTimesTest
//
//  Created by Ahmed Elashker on 3/31/19.
//  Copyright © 2019 Ahmed Elashker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArticleDetailsViewController : UIViewController

@property (strong, nonatomic) Article *article;

@end

NS_ASSUME_NONNULL_END
