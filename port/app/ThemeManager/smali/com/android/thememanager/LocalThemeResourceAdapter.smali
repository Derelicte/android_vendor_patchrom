.class public Lcom/android/thememanager/LocalThemeResourceAdapter;
.super Lmiui/app/resourcebrowser/LocalResourceAdapter;
.source "LocalThemeResourceAdapter.java"


# instance fields
.field mResourceType:J


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 4
    .parameter "fragment"
    .parameter "metaData"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/LocalResourceAdapter;-><init>(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    .line 19
    return-void
.end method


# virtual methods
.method public clearVisitors()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mVisitors:Ljava/util/List;

    .line 23
    return-void
.end method

.method protected getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 39
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
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
    .line 49
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 50
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->getMusicPlayList(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/util/List;

    move-result-object v0

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPreviews()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method protected getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;
    .locals 6
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, resourceSetCategory:I
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    const-wide/32 v4, 0x8000

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 30
    :cond_0
    new-instance v1, Lcom/android/thememanager/ThemeResourceFolder;

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/thememanager/ThemeResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 33
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    move-result-object v1

    goto :goto_0
.end method
