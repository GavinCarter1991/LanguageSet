//
//  LanguageSet.h
//  Multilingual
//
//  Created by wt on 2025/6/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 语言变更通知
extern NSString * const LanguageDidChangeNotification;

@interface LanguageSet : UIViewController

// 单例实例
+ (instancetype)sharedManager;

// 当前语言 (zh-Hans, en, etc.)
@property (nonatomic, copy, readonly) NSString *currentLanguage;

/*
 默认支持：
 @"zh-Hans": @"简体中文",
 @"en": @"English",
 */
// 支持的语言列表
@property (nonatomic, strong, readonly) NSArray<NSString *> *supportedLanguages;

// 用户显示的语言名称：@"zh-Hans": @"简体中文",
@property (nonatomic, strong, readonly) NSDictionary<NSString *, NSString *> *languageDisplayNames;

// 设置应用语言
- (void)setLanguage:(NSString *)language;

// 获取本地化字符串
- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value;

// 重置为系统语言
- (void)resetToSystemLanguage;

@end

NS_ASSUME_NONNULL_END
