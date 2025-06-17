//
//  BaseViewController.h
//  Multilingual
//
//  Created by wt on 2025/6/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

// 子类重写此方法更新UI文本
- (void)updateLocalizedText;

@end

NS_ASSUME_NONNULL_END
