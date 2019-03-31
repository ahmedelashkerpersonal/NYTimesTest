//
//  NYMostPopCell.h
//  NYTimesTest
//
//  Created by Ahmed Elashker on 3/31/19.
//  Copyright © 2019 Ahmed Elashker. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYMostPopCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imgThumb;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblBy;
@property (strong, nonatomic) IBOutlet UILabel *lblDate;

@end

NS_ASSUME_NONNULL_END
