//
//  BaseViewController.m
//  Multilingual
//
//  Created by wt on 2025/6/17.
//

#import "BaseViewController.h"
#import "LanguageSet/LanguageSet.h"

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 注册语言变更通知
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(languageDidChange)
                                                 name:LanguageDidChangeNotification
                                               object:nil];
}

- (void)dealloc {
    // 移除通知监听
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)languageDidChange {
    // 更新UI文本
    [self updateLocalizedText];
}

- (void)updateLocalizedText {
    // 子类重写实现具体更新逻辑
}

@end
