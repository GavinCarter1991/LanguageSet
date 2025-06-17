//
//  LocalizationMacro.h
//  Multilingual
//
//  Created by wt on 2025/6/17.
//

#ifndef LocalizationMacro_h
#define LocalizationMacro_h

// 基础宏定义
#define LocalizedString(key) \
[[LanguageManager sharedManager] localizedStringForKey:key value:@""]

// 带默认值的宏定义
#define LocalizedStringWithDefault(key, default) \
[[LanguageManager sharedManager] localizedStringForKey:key value:default]

// 格式化字符串宏
#define LocalizedFormat(key, ...) \
[NSString stringWithFormat:LocalizedString(key), ##__VA_ARGS__]


#endif /* LocalizationMacro_h */
