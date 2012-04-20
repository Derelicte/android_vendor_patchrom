.class public Lcom/miui/gallery/settings/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static sLastVisitedFolderPath:Ljava/lang/String;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method

.method private static getDefaultEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInitDefaultImages()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "init_default_images"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getLastVisitedFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_visited_folder"

    sget-object v2, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 116
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    sget-object v0, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 119
    :cond_1
    sget-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastVisitedType()I
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last-visited-type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sIsShowHidden()Z
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_hidden_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setInitDefaultImages()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "init_default_images"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method public static setLastVisitedFolderPath(Ljava/lang/String;)V
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 106
    sget-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sput-object p0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_visited_folder"

    sget-object v2, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    :cond_0
    return-void
.end method

.method public static setLastVisitedType(I)V
    .locals 2
    .parameter "lastVisitedType"

    .prologue
    .line 86
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last-visited-type"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method


# virtual methods
.method public getAllAlbumsSortBy()I
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "all-album-sort-by"

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRecentAlbumsSortBy()I
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "recent-album-sort-by"

    const/4 v2, -0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSlideshowInterval()I
    .locals 4

    .prologue
    .line 51
    const/4 v0, 0x2

    .line 53
    .local v0, interval:I
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "slideshow_interval"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 56
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isAutoCreateRecentAlbum()Z
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_create_recent_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowHidden()Z
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "show_hidden_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSlideshowRepeat()Z
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "slideshow_repeat_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAllAlbumsSortBy(I)V
    .locals 2
    .parameter "sortBy"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "all-album-sort-by"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public setRecentAlbumsSortBy(I)V
    .locals 2
    .parameter "sortBy"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "recent-album-sort-by"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method
