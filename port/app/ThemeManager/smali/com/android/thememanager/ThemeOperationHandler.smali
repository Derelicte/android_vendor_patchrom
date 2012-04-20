.class public Lcom/android/thememanager/ThemeOperationHandler;
.super Lmiui/app/resourcebrowser/view/ResourceOperationHandler;
.source "ThemeOperationHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/ThemeResourceState;)V
    .locals 0
    .parameter "activity"
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;-><init>(Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lmiui/app/resourcebrowser/view/ResourceState;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeOperationHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/android/thememanager/ThemeOperationHandler;->applyTheme(Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/thememanager/ThemeOperationHandler;->cutAndSetLockWallpapers(Ljava/lang/String;)V

    return-void
.end method

.method private applyTheme(Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 9
    .parameter "themePath"
    .parameter "removeFlags"
    .parameter "applyFlags"
    .parameter "lastRun"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/resource/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v5

    .line 171
    .local v5, info:Lcom/android/thememanager/ThemeInfo;
    if-eqz v5, :cond_0

    move-wide v0, p2

    move-wide v2, p4

    move-object v4, p6

    .line 172
    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private cutAndSetLockWallpapers(Ljava/lang/String;)V
    .locals 3
    .parameter "filepath"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/thememanager/ThemeHelper;->saveLockWallpaper(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    .line 149
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 150
    return-void
.end method

.method private cutAndSetWallpapers(JLjava/lang/String;)V
    .locals 10
    .parameter "resourceType"
    .parameter "filepath"

    .prologue
    const v9, 0x3f8ccccd

    .line 116
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 118
    invoke-static {p3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 120
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 121
    .local v6, size:Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 122
    iget v8, v6, Landroid/graphics/Point;->x:I

    mul-int/lit8 v4, v8, 0x2

    .line 123
    .local v4, maxNeedWidth:I
    iget v3, v6, Landroid/graphics/Point;->y:I

    .line 124
    .local v3, maxNeedHeight:I
    const v0, 0x3f8ccccd

    .line 125
    .local v0, EXPAND_FACTOR:F
    int-to-float v8, v4

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 126
    int-to-float v8, v3

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 135
    const/4 v1, 0x1

    .line 137
    .local v1, changed:Z
    :try_start_0
    iget-object v8, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    const-string v9, "wallpaper"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/WallpaperManager;

    .line 138
    .local v7, wm:Landroid/app/WallpaperManager;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 139
    iget-object v8, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1, p2, p3}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v7           #wm:Landroid/app/WallpaperManager;
    :goto_0
    iget-object v8, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v1}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 145
    return-void

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doApplyResource(Lcom/android/thememanager/ThemeResourceState;)V
    .locals 19
    .parameter "resource"

    .prologue
    .line 35
    const/4 v10, 0x0

    .line 36
    .local v10, changed:Z
    const/16 v16, 0x1

    .line 38
    .local v16, toastNeeded:Z
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/thememanager/ThemeResourceState;->resourceType:J

    .line 39
    .local v12, resourceType:J
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/thememanager/ThemeResourceState;->localPath:Ljava/lang/String;

    .line 41
    .local v3, localPath:Ljava/lang/String;
    const-wide/16 v1, 0x2

    cmp-long v1, v12, v1

    if-nez v1, :cond_1

    .line 42
    const/16 v16, 0x0

    .line 43
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Lcom/android/thememanager/ThemeOperationHandler;->cutAndSetWallpapers(JLjava/lang/String;)V

    .line 107
    :goto_0
    if-eqz v16, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v10}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 110
    :cond_0
    :goto_1
    return-void

    .line 44
    :cond_1
    const-wide/16 v1, 0x4

    cmp-long v1, v12, v1

    if-nez v1, :cond_2

    .line 45
    const/16 v16, 0x0

    .line 46
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Lcom/android/thememanager/ThemeOperationHandler;->giveTipForLockscreenPaper(JLjava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    const-wide/16 v1, 0x40

    cmp-long v1, v12, v1

    if-nez v1, :cond_3

    .line 48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/android/thememanager/ThemeHelper;->applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    goto :goto_0

    .line 49
    :cond_3
    const-wide/16 v1, 0x100

    cmp-long v1, v12, v1

    if-nez v1, :cond_4

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v10

    goto :goto_0

    .line 51
    :cond_4
    const-wide/16 v1, 0x200

    cmp-long v1, v12, v1

    if-nez v1, :cond_5

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v10

    goto :goto_0

    .line 53
    :cond_5
    const-wide/16 v1, 0x400

    cmp-long v1, v12, v1

    if-nez v1, :cond_6

    .line 54
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v10

    goto :goto_0

    .line 56
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/thememanager/ThemeResourceState;->applyParameters:Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;

    iget-wide v14, v1, Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;->applyComponentFlags:J

    .line 57
    .local v14, tmpFlags:J
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceFont()Z

    move-result v1

    if-nez v1, :cond_7

    .line 58
    const-wide/16 v1, -0x11

    and-long/2addr v14, v1

    .line 60
    :cond_7
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceAudioEffect()Z

    move-result v1

    if-nez v1, :cond_8

    .line 61
    const-wide/32 v1, -0x8001

    and-long/2addr v14, v1

    .line 63
    :cond_8
    move-wide v6, v14

    .line 64
    .local v6, applyFlags:J
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/thememanager/ThemeResourceState;->applyParameters:Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;

    iget-boolean v1, v1, Lcom/android/thememanager/ThemeResourceState$ApplyParmeters;->needRemoveAllOldComponents:Z

    if-eqz v1, :cond_9

    sget-wide v1, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v17, -0x1

    xor-long v1, v1, v17

    or-long v4, v6, v1

    .line 68
    .local v4, removeFlags:J
    :goto_2
    invoke-static {v6, v7}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v1

    if-gtz v1, :cond_a

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v11

    .line 73
    .local v11, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_1

    .end local v4           #removeFlags:J
    .end local v11           #dialog:Landroid/app/AlertDialog;
    :cond_9
    move-wide v4, v6

    .line 64
    goto :goto_2

    .line 74
    .restart local v4       #removeFlags:J
    :cond_a
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/thememanager/ThemeResourceState;->componentFlags:J

    invoke-static {v6, v7, v3, v1, v2}, Lcom/android/thememanager/ThemeHelper;->realFontChange(JLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 75
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090039

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v17, 0x7f09003a

    new-instance v1, Lcom/android/thememanager/ThemeOperationHandler$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/thememanager/ThemeOperationHandler$1;-><init>(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;JJ)V

    move/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const-wide/16 v1, 0x10

    cmp-long v1, v12, v1

    if-eqz v1, :cond_b

    .line 93
    const v8, 0x7f09003b

    new-instance v1, Lcom/android/thememanager/ThemeOperationHandler$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/thememanager/ThemeOperationHandler$2;-><init>(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;JJ)V

    invoke-virtual {v9, v8, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    :cond_b
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 103
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_c
    const/16 v16, 0x0

    .line 104
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/thememanager/ThemeOperationHandler;->applyTheme(Ljava/lang/String;JJLjava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private giveTipForLockscreenPaper(JLjava/lang/String;)V
    .locals 4
    .parameter "resourceType"
    .parameter "localPath"

    .prologue
    .line 153
    const-wide/16 v1, 0x4

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->hasAwesomeLockscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/thememanager/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 159
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/thememanager/ThemeOperationHandler$3;

    invoke-direct {v1, p0, p3}, Lcom/android/thememanager/ThemeOperationHandler$3;-><init>(Lcom/android/thememanager/ThemeOperationHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 167
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/thememanager/ThemeOperationHandler;->cutAndSetLockWallpapers(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleApplyEvent()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/thememanager/ThemeOperationHandler;->mResource:Lmiui/app/resourcebrowser/view/ResourceState;

    check-cast v0, Lcom/android/thememanager/ThemeResourceState;

    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeOperationHandler;->doApplyResource(Lcom/android/thememanager/ThemeResourceState;)V

    .line 30
    invoke-super {p0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->handleApplyEvent()V

    .line 31
    return-void
.end method
