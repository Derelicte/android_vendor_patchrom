.class public Lcom/android/thememanager/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 84
    const-wide/16 v0, -0x1

    .line 85
    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 87
    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    const-string v2, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    const-string v2, ""

    .line 118
    const-wide/16 v5, 0x2

    cmp-long v2, v0, v5

    if-nez v2, :cond_8

    .line 119
    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "/system/media/wallpaper"

    aput-object v2, v5, v4

    const-string v2, "/data/media/wallpaper"

    aput-object v2, v5, v3

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v2, v5, v8

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v2, v5, v9

    .line 123
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    .line 170
    :goto_1
    const-wide/32 v8, 0x8000

    cmp-long v2, v0, v8

    if-nez v2, :cond_0

    .line 171
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string v2, "com.miui.android.resourcebrowser.SHOW_RINGTONE_NAME"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    :cond_0
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v8, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "android.intent.extra.SHOW_COMPONENT_SIZE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_1
    const-string v7, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    invoke-virtual {p0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->getResourceSetCategory(J)I

    move-result v7

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v2, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->getDisplayType(J)I

    move-result v7

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getResourceTypeParameter(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "com.miui.android.resourcebrowser.CATEGORY_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isCategorySupported(J)Z

    move-result v7

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const-wide/32 v7, 0x10000

    cmp-long v2, v0, v7

    if-eqz v2, :cond_2

    const-wide/32 v7, 0x20000

    cmp-long v2, v0, v7

    if-nez v2, :cond_3

    .line 187
    :cond_2
    const-string v7, "com.miui.android.resourcebrowser.CATEGORY_SUPPORTED"

    const-string v2, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_2
    invoke-virtual {p0, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    :cond_3
    const-string v2, "com.miui.android.resourcebrowser.VERSION_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isVersionSupported(J)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string v2, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    const-string v2, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/OnlineThemeResourceListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v2

    .line 201
    sget v3, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 202
    const-string v5, "com.miui.android.resourcebrowser.PLATFORM_VERSION_START"

    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v2, "com.miui.android.resourcebrowser.PLATFORM_VERSION_END"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v2, "com.miui.android.resourcebrowser.FORMAT_VERSION_START"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v2, "com.miui.android.resourcebrowser.FORMAT_VERSION_END"

    sget v3, Lcom/android/thememanager/ConstantsHelper;->CURRENT_FORMAT_VERSION:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 211
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_11

    .line 212
    const-string v0, "preview_cover_"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v0, "cover_preview"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    .line 214
    :goto_3
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 215
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 89
    :pswitch_1
    const-wide/16 v0, 0x100

    .line 90
    goto/16 :goto_0

    .line 92
    :pswitch_2
    const-wide/16 v0, 0x200

    .line 93
    goto/16 :goto_0

    .line 95
    :pswitch_3
    const-wide/16 v0, 0x400

    goto/16 :goto_0

    .line 98
    :cond_4
    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    const-wide/16 v0, 0x2

    goto/16 :goto_0

    .line 102
    :cond_5
    const-string v0, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    const-string v0, "android.intent.extra.SHOW_COMPONENT_NAME"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "clock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    const-wide/32 v0, 0x10000

    .line 109
    :goto_4
    const-string v2, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    const-string v2, "thememanager.local.clock_photo_size_flag"

    const-string v5, "android.intent.extra.SHOW_COMPONENT_SIZE"

    invoke-virtual {v7, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_6
    const-wide/32 v0, 0x20000

    goto :goto_4

    .line 112
    :cond_7
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto/16 :goto_0

    .line 124
    :cond_8
    const-wide/16 v5, 0x4

    cmp-long v2, v0, v5

    if-nez v2, :cond_9

    .line 125
    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "/system/media/lockscreen"

    aput-object v2, v5, v4

    const-string v2, "/data/media/lockscreen"

    aput-object v2, v5, v3

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    aput-object v2, v5, v8

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    aput-object v2, v5, v9

    .line 129
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_1

    .line 130
    :cond_9
    const-wide/16 v5, 0x40

    cmp-long v2, v0, v5

    if-eqz v2, :cond_a

    const-wide/16 v5, 0x100

    cmp-long v2, v0, v5

    if-nez v2, :cond_b

    .line 131
    :cond_a
    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "/system/media/audio/ringtones"

    aput-object v2, v5, v4

    const-string v2, "/data/media/audio/ringtones"

    aput-object v2, v5, v3

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RINGTONE_PATH:Ljava/lang/String;

    aput-object v2, v5, v8

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

    aput-object v2, v5, v9

    .line 135
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_1

    .line 136
    :cond_b
    const-wide/16 v5, 0x200

    cmp-long v2, v0, v5

    if-nez v2, :cond_c

    .line 137
    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "/system/media/audio/notifications"

    aput-object v2, v5, v4

    const-string v2, "/data/media/audio/notifications"

    aput-object v2, v5, v3

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    aput-object v2, v5, v8

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    aput-object v2, v5, v9

    .line 141
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_1

    .line 142
    :cond_c
    const-wide/16 v5, 0x400

    cmp-long v2, v0, v5

    if-nez v2, :cond_d

    .line 143
    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "/system/media/audio/alarms"

    aput-object v2, v5, v4

    const-string v2, "/data/media/audio/alarms"

    aput-object v2, v5, v3

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_ALARM_PATH:Ljava/lang/String;

    aput-object v2, v5, v8

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_ALARM_PATH:Ljava/lang/String;

    aput-object v2, v5, v9

    .line 147
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_1

    .line 148
    :cond_d
    const-wide/32 v5, 0x10000

    cmp-long v2, v0, v5

    if-nez v2, :cond_e

    .line 149
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "/system/media/theme"

    aput-object v2, v5, v4

    const-string v2, "/system/media/theme/gadget/clock"

    aput-object v2, v5, v3

    const-string v2, "/data/media/theme"

    aput-object v2, v5, v8

    const-string v2, "/data/media/theme/clock"

    aput-object v2, v5, v9

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v2, v5, v10

    const/4 v2, 0x5

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 154
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_1

    .line 155
    :cond_e
    const-wide/32 v5, 0x20000

    cmp-long v2, v0, v5

    if-nez v2, :cond_f

    .line 156
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "/system/media/theme"

    aput-object v2, v5, v4

    const-string v2, "/system/media/theme/gadget/photo_frame"

    aput-object v2, v5, v3

    const-string v2, "/data/media/theme"

    aput-object v2, v5, v8

    const-string v2, "/data/media/theme/photo_frame"

    aput-object v2, v5, v9

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v2, v5, v10

    const/4 v2, 0x5

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 161
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_1

    .line 163
    :cond_f
    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    aput-object v2, v5, v4

    const-string v2, "/system/media/theme"

    aput-object v2, v5, v3

    const-string v2, "/data/media/theme"

    aput-object v2, v5, v8

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v2, v5, v9

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v2, v5, v10

    .line 167
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_1

    :cond_10
    move v2, v4

    .line 187
    goto/16 :goto_2

    .line 221
    :cond_11
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_12
    const-string v1, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    const-string v1, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX_INDICATOR"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    const-string v1, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    const-string v1, "com.miui.android.resourcebrowser.PREVIEW_PREFIX_INDICATOR"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    return-object p0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getDisplayType(J)I
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 20
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x800

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x20000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x3

    .line 37
    :goto_0
    return v0

    .line 26
    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 27
    const/4 v0, 0x1

    goto :goto_0

    .line 28
    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 29
    const/4 v0, 0x2

    goto :goto_0

    .line 30
    :cond_3
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 31
    const/4 v0, 0x5

    goto :goto_0

    .line 32
    :cond_4
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    .line 35
    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    .line 37
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getResourceSetCategory(J)I
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x2

    .line 62
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioResource(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 42
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCategorySupported(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 67
    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x20000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageResource(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 48
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVersionSupported(J)Z
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMenuPopup(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 52
    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
