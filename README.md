# FLocalizableDemo
### 国际化Demo

#### 1、创建项目工程
#### 2、找到`PROJECT->Localizations` 添加需要的国际化语言
#### 3、创建App名字国际化文件 
 
 * 1.新建一个`InfoPlist.string`文件(名字不可更改)
 * 2.勾选国际化语言(右侧栏中勾选)
 * 3.左边每个国际化文件添加一下代码(`AppName` 替换成对应语言的App名字)
```
CFBundleDisplayName = "AppName";
```

#### 4、创建App文案国际化文件	
  
  * 1.新建一个.string文件(例如:`FLocalizableDemoLocalizable.strings`)
  * 2.勾选国际化语言(右侧栏中勾选)
  * 3.每个国际化文件添加国际化词条(等号左侧是左右语言保持一致的key,右侧是对应语言的value)

```
/* 完成 */
"Done" = "Done";
```
#### 5、创建国际化词条对接文件

```
// 此文件名是  "FLocalizableDemoLocalizable.h"
#ifndef FLocalizableDemoLocalizable_h
#define FLocalizableDemoLocalizable_h

// 引入国际化文件
#ifndef LocDemo_MESSAGE_FILE
// 国际化文件名宏 /* App文案国际化文件名(FLocalizableDemoLocalizable.strings) */
#define LocDemo_MESSAGE_FILE @"FLocalizableDemoLocalizable"
#endif /* ANLocalizeMarocs_h */


// 国际化词条宏
#define MESSAGE_Cancel NSLocalizedStringFromTable(@"Cancel",LocDemo_MESSAGE_FILE,@"取消")
#define MESSAGE_OK NSLocalizedStringFromTable(@"OK",LocDemo_MESSAGE_FILE,@"确定")

#endif /* FLocalizableDemoLocalizable_h */

```

#### 6、 使用在需要使用国际化词条的地方导入头文件 

* 1.`#import "FLocalizableDemoLocalizable.h"`
* 2.使用对应字符串的国际化词条宏 例如: `titleLabel.text = MESSAGE_OK;`

#### 注意: 
修改默认国际化文件(就是该语言没有国际化，默认使用什么语言)
1、找到`PROJECT->Localizations` 
2、点击下方`Use Base Internationalization` 切换默认语言即可





