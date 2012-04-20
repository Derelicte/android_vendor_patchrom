.class public Lcom/miui/player/ui/MusicBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;,
        Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;,
        Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;,
        Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    }
.end annotation


# static fields
.field static final DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;


# instance fields
.field private mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

.field private mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

.field private mIsRefreshMediaProvider:Z

.field private mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

.field mRefreshType:I

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private final mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v3, 0x7f0800a9

    const-string v4, "vnd.android.cursor.dir/online_category"

    invoke-direct {v2, v3, v6, v4}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v3, 0x7f0800ad

    const-string v4, "main_item_track"

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v3, 0x7f0800aa

    const-string v4, "main_item_artist"

    const-string v5, "vnd.android.cursor.dir/artistalbum"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v3, 0x7f0800ab

    const-string v4, "main_item_album"

    const-string v5, "vnd.android.cursor.dir/album"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v3, 0x7f0800ac

    const-string v4, "vnd.android.cursor.dir/folder"

    invoke-direct {v2, v3, v6, v4}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v3, 0x7f0800ae

    const-string v4, "vnd.android.cursor.dir/playlist"

    invoke-direct {v2, v3, v6, v4}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v3, 0x7f08003d

    invoke-direct {v2, v3, v6, v6}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 235
    const/4 v0, 0x7

    iput v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mRefreshType:I

    .line 255
    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicBrowserActivity$1;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    .line 441
    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicBrowserActivity$2;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/MusicBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/player/ui/MusicBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/player/ui/MusicBrowserActivity;Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/MusicBrowserActivity;->openItem(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;Ljava/lang/String;)V

    return-void
.end method

.method private openItem(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;Ljava/lang/String;)V
    .locals 5
    .parameter "item"
    .parameter "numString"

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, handled:Z
    const-string v3, "vnd.android.cursor.dir/online_category"

    iget-object v4, p1, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity;->showImpunityDeclaration(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)Z

    move-result v0

    .line 487
    :cond_0
    if-nez v0, :cond_1

    .line 488
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.player.BROWSER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p1, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    if-eqz p2, :cond_2

    .line 492
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 493
    .local v2, num:I
    const-string v3, "item_num"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v2           #num:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 502
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 497
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "item_num"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 494
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private readItemNumFromPrefs()[Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;
    .locals 8

    .prologue
    .line 186
    sget-object v6, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    array-length v6, v6

    new-array v3, v6, [Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;

    .line 188
    .local v3, itemArr:[Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 189
    .local v5, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_3

    .line 190
    sget-object v6, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v0, v6, v1

    .line 191
    .local v0, driverItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;

    invoke-direct {v2}, Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;-><init>()V

    .line 192
    .local v2, info:Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;
    iget v6, v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mName:I

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/MusicBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;->name:Ljava/lang/String;

    .line 194
    iget v6, v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mName:I

    const v7, 0x7f0800a9

    if-ne v6, v7, :cond_1

    .line 195
    const v6, 0x7f0800af

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/MusicBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;->num:Ljava/lang/String;

    .line 201
    :cond_0
    :goto_1
    aput-object v2, v3, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v6, v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 197
    iget-object v6, v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 198
    .local v4, num:I
    if-ltz v4, :cond_2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v2, Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;->num:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v6, ""

    goto :goto_2

    .line 204
    .end local v0           #driverItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    .end local v2           #info:Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;
    .end local v4           #num:I
    :cond_3
    return-object v3
.end method

.method private refreshMediaProvider()V
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-boolean v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    if-nez v0, :cond_1

    .line 466
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->triggerMediaMounted()V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    goto :goto_0

    .line 469
    :cond_1
    const v0, 0x7f08000e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private refreshTitle()V
    .locals 4

    .prologue
    .line 435
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v0

    .line 436
    .local v0, num:I
    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method

.method private showFileFilterInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 533
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 534
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_first_install"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f08

    new-instance v3, Lcom/miui/player/ui/MusicBrowserActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity$4;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 550
    :cond_0
    return-void
.end method

.method private showImpunityDeclaration(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 506
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 507
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_first_to_online"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080078

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080079

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f08

    new-instance v4, Lcom/miui/player/ui/MusicBrowserActivity$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$3;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;Landroid/content/SharedPreferences;Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 528
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private triggerMediaMounted()V
    .locals 3

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 476
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    return-void
.end method


# virtual methods
.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/miui/player/ui/base/MediaCursorLoader;->createMediaObserverInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    move-result-object v0

    return-object v0
.end method

.method protected handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "id"
    .parameter "cursor"

    .prologue
    .line 422
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 423
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->cancel(Z)Z

    .line 427
    :cond_0
    invoke-static {}, Lcom/miui/player/util/FolderProvider;->instance()Lcom/miui/player/util/FolderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/util/FolderProvider;->markForceUpdate()V

    .line 428
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;->updateFolderCount(Landroid/content/Context;)V

    .line 429
    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;-><init>(Landroid/content/Context;Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;Lcom/miui/player/ui/controller/HistoryBrowserController;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    .line 430
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 431
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update media nums"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 1
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshTitle()V

    .line 225
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/HistoryBrowserController;->refreshAll()V

    .line 227
    :cond_0
    return-void
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 108
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MusicBrowserActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 111
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->readItemNumFromPrefs()[Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;

    move-result-object v1

    .line 112
    .local v1, itemArr:[Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;
    new-instance v2, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;-><init>(Landroid/content/Context;[Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;)V

    iput-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    .line 113
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MusicBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    new-instance v2, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 116
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 117
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setGotoNowplayingVisible(Z)V

    .line 119
    new-instance v2, Lcom/miui/player/ui/controller/HistoryBrowserController;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/controller/HistoryBrowserController;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v2, "com.miui.player.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v2, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->showFileFilterInfo()V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->cancel(Z)Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/HistoryBrowserController;->recycle()V

    .line 156
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 157
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->onSearchRequested()Z

    goto :goto_0

    .line 218
    :cond_2
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v1, v0, p3

    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;

    iget-object v0, v0, Lcom/miui/player/ui/MusicBrowserActivity$ItemInfo;->num:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->openItem(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, handled:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 172
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshMediaProvider()V

    .line 173
    const/4 v0, 0x1

    .line 174
    goto :goto_0

    .line 176
    :pswitch_1
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->quitMediaPlay(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->finish()V

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 162
    const/16 v0, 0x13

    const v1, 0x7f08000d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 163
    const/16 v0, 0x14

    const v1, 0x7f080011

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 164
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 140
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshHistory()V

    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mAdapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;->updatePlaylistCount(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method refreshHistory()V
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 242
    :cond_0
    iget v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mRefreshType:I

    .line 243
    .local v0, type:I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 244
    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/HistoryBrowserController;->refreshAll()V

    .line 245
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshTitle()V

    .line 252
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mRefreshType:I

    goto :goto_0

    .line 246
    :cond_2
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 247
    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/HistoryBrowserController;->refreshCurrent()V

    goto :goto_1

    .line 248
    :cond_3
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 249
    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mHistoryBrowser:Lcom/miui/player/ui/controller/HistoryBrowserController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/HistoryBrowserController;->refreshPlayState()V

    goto :goto_1
.end method
