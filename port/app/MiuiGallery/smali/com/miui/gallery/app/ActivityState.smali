.class public abstract Lcom/miui/gallery/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field private mPageLayoutRoot:Landroid/view/ViewGroup;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/miui/gallery/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mDestroyed:Z

    .line 74
    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mPlugged:Z

    .line 184
    new-instance v0, Lcom/miui/gallery/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/ActivityState$1;-><init>(Lcom/miui/gallery/app/ActivityState;)V

    iput-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/ActivityState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/app/ActivityState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/miui/gallery/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method private activatePage(I)V
    .locals 6
    .parameter "pageLayoutIdInMain"

    .prologue
    const/4 v5, 0x0

    .line 120
    const v4, 0x7f0b0023

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/ActivityState;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 121
    .local v3, pageLayoutContainer:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 123
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 124
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 125
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 128
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    move v4, v5

    .line 121
    goto :goto_0

    .line 130
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 133
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setContentPane(Lcom/miui/gallery/ui/GLView;I)V
    .locals 1
    .parameter "content"
    .parameter "pageLayoutIdInMain"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/GLRoot;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 137
    invoke-direct {p0, p2}, Lcom/miui/gallery/app/ActivityState;->activatePage(I)V

    .line 138
    return-void
.end method


# virtual methods
.method protected findViewInPage(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 307
    const-string v0, "should not be null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method protected getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected inflatePageView(II)V
    .locals 4
    .parameter "viewGroupId"
    .parameter "layoutId"

    .prologue
    const v3, 0x7f0b0003

    .line 144
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/ActivityState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 145
    .local v0, page:Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 149
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    .line 151
    :cond_0
    return-void
.end method

.method initialize(Lcom/miui/gallery/app/GalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 155
    iput-object p2, p0, Lcom/miui/gallery/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 156
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 164
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 173
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 182
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mDestroyed:Z

    .line 290
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 176
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 179
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 276
    return-void
.end method

.method resume()V
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 218
    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 219
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 220
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 221
    iget v7, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 222
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 226
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/app/StateManager;->getStateCount()I

    move-result v5

    .line 227
    .local v5, stateCount:I
    if-ne v5, v10, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v0, v7, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 230
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 233
    .end local v5           #stateCount:I
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 235
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 236
    .local v6, win:Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 238
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iget v7, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 239
    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 244
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->setScreenFlag()V

    .line 245
    invoke-virtual {p0, v4}, Lcom/miui/gallery/app/ActivityState;->setScreenOnFlags(Landroid/view/WindowManager$LayoutParams;)V

    .line 246
    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 248
    iget-object v2, p0, Lcom/miui/gallery/app/ActivityState;->mReceivedResults:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    .line 249
    .local v2, entry:Lcom/miui/gallery/app/ActivityState$ResultEntry;
    if-eqz v2, :cond_1

    .line 250
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/miui/gallery/app/ActivityState;->mReceivedResults:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    .line 251
    iget v7, v2, Lcom/miui/gallery/app/ActivityState$ResultEntry;->requestCode:I

    iget v8, v2, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v9, v2, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v7, v8, v9}, Lcom/miui/gallery/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 254
    :cond_1
    iget v7, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_2

    .line 256
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v7, p0, Lcom/miui/gallery/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 261
    return-void

    .line 224
    .end local v2           #entry:Lcom/miui/gallery/app/ActivityState$ResultEntry;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #win:Landroid/view/Window;
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v5       #stateCount:I
    :cond_4
    move v7, v9

    .line 227
    goto :goto_1

    .line 241
    .end local v5           #stateCount:I
    .restart local v4       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v6       #win:Landroid/view/Window;
    :cond_5
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_2
.end method

.method protected setContentPane(Lcom/miui/gallery/ui/GLView;)V
    .locals 4
    .parameter "content"

    .prologue
    const/4 v3, 0x0

    .line 80
    const/4 v0, -0x1

    .line 82
    .local v0, pageLayoutIdInMain:I
    instance-of v1, p0, Lcom/miui/gallery/app/HomePage;

    if-eqz v1, :cond_0

    .line 83
    const v0, 0x7f0b0051

    .line 97
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/app/ActivityState;->setContentPane(Lcom/miui/gallery/ui/GLView;I)V

    .line 98
    return-void

    .line 84
    :cond_0
    instance-of v1, p0, Lcom/miui/gallery/app/AlbumSetPage;

    if-eqz v1, :cond_1

    .line 85
    const v0, 0x7f0b0024

    goto :goto_0

    .line 86
    :cond_1
    instance-of v1, p0, Lcom/miui/gallery/app/AlbumPage;

    if-eqz v1, :cond_2

    .line 87
    const v0, 0x7f0b0025

    goto :goto_0

    .line 88
    :cond_2
    instance-of v1, p0, Lcom/miui/gallery/app/PhotoPage;

    if-eqz v1, :cond_3

    .line 89
    const v0, 0x7f0b0026

    goto :goto_0

    .line 90
    :cond_3
    instance-of v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;

    if-eqz v1, :cond_4

    .line 91
    const v0, 0x7f0b0053

    goto :goto_0

    .line 92
    :cond_4
    instance-of v1, p0, Lcom/miui/gallery/app/SlideshowPage;

    if-eqz v1, :cond_5

    .line 93
    const v0, 0x7f0b0052

    goto :goto_0

    .line 95
    :cond_5
    const-string v1, "Every page should have a corresponding layout in main.xml"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setScreenFlag()V
    .locals 5

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, screenRangeFlag:I
    const/4 v1, 0x1

    .line 103
    .local v1, screenOrientationFlag:I
    const/16 v0, 0x400

    .line 105
    .local v0, fullScreenFlag:I
    instance-of v3, p0, Lcom/miui/gallery/app/PhotoPage;

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/miui/gallery/app/SlideshowPage;

    if-eqz v3, :cond_1

    .line 106
    :cond_0
    or-int/lit16 v2, v2, 0x400

    .line 109
    const/4 v1, -0x1

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->setFlags(II)V

    .line 116
    iget-object v3, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 117
    return-void

    .line 111
    :cond_1
    and-int/lit16 v2, v2, -0x401

    .line 112
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setScreenOnFlags(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mPlugged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 204
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x80081

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x80082

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected setViewLayout(Landroid/widget/EditableListView;Z)V
    .locals 4
    .parameter "view"
    .parameter "isSplitActionBar"

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v2, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 340
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v1

    .line 342
    .local v1, barHeight:I
    if-eqz p2, :cond_1

    .line 343
    invoke-static {p1, v3, v3, v3, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 348
    .end local v1           #barHeight:I
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local v1       #barHeight:I
    :cond_1
    neg-int v2, v1

    invoke-static {p1, v3, v3, v3, v2}, Lcom/miui/gallery/ui/ActionModeHandler;->addLayoutMargins(Landroid/view/View;IIII)Z

    goto :goto_0
.end method

.method protected setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V
    .locals 7
    .parameter "view"
    .parameter "isSplitActionBar"

    .prologue
    .line 324
    iget-object v3, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 325
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v1

    .line 327
    .local v1, barHeight:I
    invoke-virtual {p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->bounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 328
    .local v2, rect:Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    .line 329
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/miui/gallery/ui/SlotViewWithTitle;->layout(IIII)V

    .line 334
    .end local v1           #barHeight:I
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 331
    .restart local v1       #barHeight:I
    .restart local v2       #rect:Landroid/graphics/Rect;
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/miui/gallery/ui/SlotViewWithTitle;->layout(IIII)V

    goto :goto_0
.end method
