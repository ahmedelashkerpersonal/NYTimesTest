//
//  ViewController.m
//  NYTimesTest
//
//  Created by Ahmed Elashker on 3/31/19.
//  Copyright © 2019 Ahmed Elashker. All rights reserved.
//

#import "ViewController.h"
#import "ApiManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ApiManager *api = [ApiManager new];
    [api loadArticles];
}


@end
