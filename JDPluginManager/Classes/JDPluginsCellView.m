//
//  JDPluginsCellView.m
//  JDPluginManager
//
//  Created by Danny Shmueli on 4/11/13.
//
//

#import "JDPluginsCellView.h"

@implementation JDPluginsCellView

-(void)setCellWithPluginMetaData:(JDPluginMetaData *)pluginData isInstalledPlugin:(BOOL)isInstalledPlugin
{
    subTitleTextField.stringValue = pluginData.gitHubDescription ? pluginData.gitHubDescription : @"Loading...";
    self.textField.stringValue = pluginData.name;
    installUnInstallButton.title = isInstalledPlugin ? @"UnInstall" : @"Install";
    revealInFinderButton.hidden = !isInstalledPlugin;
    lastPushDate.stringValue = pluginData.lastPushDate ? [pluginData.lastPushDate description] : @"";
    needsUpdateButton.hidden = !pluginData.needsUpdate;
    readmeButton.hidden = !isInstalledPlugin;
}

@end