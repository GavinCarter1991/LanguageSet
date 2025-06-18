//
//  WTViewController.m
//  LanguageSet
//
//  Created by gavin on 06/17/2025.
//  Copyright (c) 2025 gavin. All rights reserved.
//

#import "WTViewController.h"
#import "LanguageSet/LanguageSet.h"
#import "LocalizationMacro.h"
#import "LanguageSettingsViewController.h"

@interface WTViewController ()

@end

@implementation WTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 设置标题
    self.title = LocalizedString(@"HOME_TITLE");
    
    [self.view addSubview:self.loginButton];
    [self.view addSubview:self.welcomeLabel];
    
    self.loginButton.frame = CGRectMake(20, 120, [UIScreen mainScreen].bounds.size.width-40 , 40);
    self.welcomeLabel.frame = CGRectMake(20, 400, [UIScreen mainScreen].bounds.size.width-40 , 30);
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view, typically from a nib.
}

// 在BaseViewController子类中更新文本
- (void)updateLocalizedText {
    [super updateLocalizedText];
    
    self.title = LocalizedString(@"HOME_TITLE");
    [self.loginButton setTitle:LocalizedString(@"LOGIN_BUTTON") forState:UIControlStateNormal];
    self.welcomeLabel.text = LocalizedFormat(@"WELCOME_MESSAGE", @"wt");
}

- (void)loginEvent {
    [self.navigationController pushViewController:[[LanguageSettingsViewController alloc] init] animated:YES];
}

- (UIButton *)loginButton {
    if (!_loginButton) {
        _loginButton = [UIButton new];
        [_loginButton setTitle:LocalizedString(@"LOGIN_BUTTON") forState:UIControlStateNormal];
        _loginButton.backgroundColor = [UIColor whiteColor];
        [_loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
        [_loginButton addTarget:self action:@selector(loginEvent) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginButton;
}

- (UILabel *)welcomeLabel {
    if (!_welcomeLabel) {
        _welcomeLabel = [UILabel new];
        _welcomeLabel.textColor = [UIColor redColor];
        _welcomeLabel.font = [UIFont systemFontOfSize:14];
        [_welcomeLabel setTextAlignment:NSTextAlignmentCenter];
        _welcomeLabel.text = LocalizedFormat(@"WELCOME_MESSAGE", @"wt");
    }
    return _welcomeLabel;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
