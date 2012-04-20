.class public Lcom/android/thememanager/OnlineThemeResourceAdapter;
.super Lmiui/app/resourcebrowser/OnlineResourceAdapter;
.source "OnlineThemeResourceAdapter.java"


# instance fields
.field mResourceType:J


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 4
    .parameter "fragment"
    .parameter "metaData"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;-><init>(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    .line 20
    iget-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v2, 0x20000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.USING_PICKER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mCategoryCode:Ljava/lang/String;

    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method protected getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 29
    iget-wide v1, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, name:Ljava/lang/String;
    const-string v1, "%s (%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getMusicPlayList(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/util/List;
    .locals 5
    .parameter "resourceItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-wide v1, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 40
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->getMusicPlayList(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/util/List;

    move-result-object v0

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/Resource;->getOnlinePreviews()Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method
