//
//  LanguageSettingsViewController.m
//  Multilingual
//
//  Created by wt on 2025/6/17.
//

#import "LanguageSettingsViewController.h"
#import <LanguageSet/LanguageSet.h>
#import "LocalizationMacro.h"

@interface LanguageSettingsViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray<NSString *> *languages;

@end

@implementation LanguageSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = LocalizedString(@"SETTINGS_LANGUAGE");
    self.languages = [LanguageSet sharedManager].supportedLanguages;
    
    // 创建表格
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    // 注册cell
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.languages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *languageCode = self.languages[indexPath.row];
    NSString *languageName = [LanguageSet sharedManager].languageDisplayNames[languageCode];
    
    cell.textLabel.text = languageName;
    
    // 标记当前选中语言
    if ([languageCode isEqualToString:[LanguageSet sharedManager].currentLanguage]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *selectedLanguage = self.languages[indexPath.row];
    [[LanguageSet sharedManager] setLanguage:selectedLanguage];
    
    // 刷新界面显示
    [tableView reloadData];
    
    // 更新导航栏标题
    self.title = LocalizedString(@"SETTINGS_LANGUAGE");
}

@end
