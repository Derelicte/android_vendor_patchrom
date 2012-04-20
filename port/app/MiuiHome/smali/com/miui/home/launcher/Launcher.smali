.class public final Lcom/miui/home/launcher/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$WallpaperChangedIntentReceiver;,
        Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;,
        Lcom/miui/home/launcher/Launcher$ScreenOnOffReceiver;,
        Lcom/miui/home/launcher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/miui/home/launcher/Launcher$CreateShortcut;,
        Lcom/miui/home/launcher/Launcher$Padding;,
        Lcom/miui/home/launcher/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field private static final DISABLE_TOUCH_IMPROVE:[B

.field private static final ENABLE_TOUCH_IMPROVE:[B

.field private static mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsHardwareAccelerated:Z


# instance fields
.field private mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

.field private mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

.field private mDeleteZoneEditingExit:Landroid/view/animation/Animation;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnim:Landroid/animation/ValueAnimator;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mDragLayerBackground:Lcom/miui/home/launcher/Background;

.field private mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

.field private mEditingState:I

.field private mErrorBar:Lcom/miui/home/launcher/ErrorBar;

.field private mFolderCling:Lcom/miui/home/launcher/FolderCling;

.field public mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSeats:Lcom/miui/home/launcher/HotSeats;

.field private mHotseatEditingEnter:Landroid/view/animation/Animation;

.field private mHotseatEditingExit:Landroid/view/animation/Animation;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mInstallPresetAppDialog:Landroid/app/ProgressDialog;

.field private mLastDragPos:[I

.field private mLastPausedTime:J

.field mLockSettings:Lmiui/security/ChooseLockSettingsHelper;

.field private mMenuAddInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mOnResumeExpectedForActivityResult:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mScreen:Landroid/view/View;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private final mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitingForResult:Z

.field private final mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWidgetEditingEnter:Landroid/view/animation/Animation;

.field private mWidgetEditingExit:Landroid/view/animation/Animation;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

.field private mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;

.field private mWorkspaceLoading:Z

.field private mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 2040
    new-array v0, v3, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v2

    sput-object v0, Lcom/miui/home/launcher/Launcher;->DISABLE_TOUCH_IMPROVE:[B

    .line 2041
    new-array v0, v3, [B

    const/16 v1, 0x31

    aput-byte v1, v0, v2

    sput-object v0, Lcom/miui/home/launcher/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 154
    new-instance v0, Lcom/miui/home/launcher/Launcher$ScreenOnOffReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$ScreenOnOffReceiver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/miui/home/launcher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Lcom/miui/home/launcher/Launcher$WallpaperChangedIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$WallpaperChangedIntentReceiver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 183
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 187
    const/4 v0, 0x7

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Lcom/miui/home/launcher/Launcher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$1;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 462
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1407
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    .line 1759
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 557
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 559
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Launcher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Launcher;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/Launcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->pickShortcut()V

    return-void
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMenuAddInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showAddDialog(Lcom/miui/home/launcher/CellLayout$CellInfo;)V

    .line 1090
    return-void
.end method

.method private checkForLocaleChange()V
    .locals 10

    .prologue
    .line 284
    new-instance v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/miui/home/launcher/Launcher$1;)V

    .line 285
    .local v3, localeConfiguration:Lcom/miui/home/launcher/Launcher$LocaleConfiguration;
    invoke-static {p0, v3}, Lcom/miui/home/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 289
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 290
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, locale:Ljava/lang/String;
    iget v7, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 293
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 295
    .local v4, mcc:I
    iget v8, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 296
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 298
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-ne v4, v7, :cond_0

    if-eq v5, v8, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 300
    .local v2, localeChanged:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 301
    iput-object v1, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 302
    iput v4, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 303
    iput v5, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 305
    invoke-static {p0, v3}, Lcom/miui/home/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 306
    iget-object v9, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v9}, Lcom/miui/home/launcher/IconCache;->flush()V

    .line 308
    :cond_1
    return-void

    .line 298
    .end local v2           #localeChanged:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 593
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 594
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 595
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 15
    .parameter "data"

    .prologue
    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 791
    .local v12, extras:Landroid/os/Bundle;
    const-string v0, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 795
    .local v9, appWidgetId:I
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 798
    .local v10, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v13

    .line 799
    .local v13, layout:Lcom/miui/home/launcher/CellLayout;
    iget v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, v10, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v13, v0, v2}, Lcom/miui/home/launcher/CellLayout;->widgetFrameToCell(II)[I

    move-result-object v14

    .line 802
    .local v14, spans:[I
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    const/4 v2, 0x0

    aget v1, v0, v2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v0, 0x0

    aget v3, v14, v0

    const/4 v0, 0x1

    aget v4, v14, v0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v11

    .line 803
    .local v11, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    if-nez v11, :cond_1

    .line 804
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v9}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 810
    .local v1, launcherInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    const/4 v0, 0x0

    aget v0, v14, v0

    iput v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 811
    const/4 v0, 0x1

    aget v0, v14, v0

    iput v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 813
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    iget v6, v11, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v7, v11, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 817
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0, p0, v9, v10}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 822
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v9, v10}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 823
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 825
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v4, v11, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v5, v11, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iget v6, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v7, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;)V
    .locals 10
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 718
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    aget v2, v2, v4

    invoke-direct {p0, v0, v2, v4}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v7

    .line 719
    .local v7, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    if-nez v7, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 722
    .local v8, cellLayout:Lcom/miui/home/launcher/CellLayout;
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1, v7}, Lcom/miui/home/launcher/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v9

    .line 723
    .local v9, info:Lcom/miui/home/launcher/ShortcutInfo;
    if-eqz v9, :cond_0

    .line 724
    invoke-virtual {p0, v8, v9}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    .line 725
    .local v1, shortcut:Landroid/view/View;
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v2, v7, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v3, v7, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private createFolderIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 695
    const v0, 0x7f03000e

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method private createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 708
    const v0, 0x7f030003

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    return-object v0
.end method

.method private enableTouchImprove(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2045
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_0

    .line 2046
    const-string v0, "/proc/touch_ramp"

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2047
    const-string v0, "/proc/touch_idle_lock"

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2049
    :cond_0
    return-void
.end method

.method private findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "showError"

    .prologue
    const/4 v3, 0x1

    .line 1239
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1243
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1244
    if-nez v0, :cond_0

    move-object v0, v6

    .line 1263
    :goto_0
    return-object v0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1248
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIIIZ)[I

    move-result-object v1

    .line 1249
    if-nez v1, :cond_2

    .line 1250
    if-eqz p5, :cond_1

    .line 1251
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_1
    move-object v0, v6

    .line 1253
    goto :goto_0

    .line 1256
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    .line 1257
    aget v2, v1, v5

    iput v2, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 1258
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 1259
    iput p3, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 1260
    iput p4, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 1261
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    goto :goto_0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installPresetApp(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 1410
    const-string v0, ""

    const v1, 0x7f0b0028

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    .line 1411
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1412
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$3;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/Launcher$3;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 1425
    return-void
.end method

.method public static final isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->mIsHardwareAccelerated:Z

    return v0
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 7
    .parameter "state"

    .prologue
    .line 492
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 493
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .local v0, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v3, v0

    .line 494
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 495
    .local v2, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    packed-switch p1, :pswitch_data_0

    .line 492
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 497
    :pswitch_0
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    goto :goto_1

    .line 500
    :pswitch_1
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 503
    :pswitch_2
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 506
    :pswitch_3
    iget-wide v3, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 507
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 511
    :pswitch_4
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 514
    :pswitch_5
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 517
    :pswitch_6
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 520
    :pswitch_7
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 524
    .end local v0           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v2           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    :cond_1
    return-void

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    .line 1333
    return-void
.end method

.method private openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 1436
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->open()V

    .line 1437
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1438
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1439
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1440
    return-void

    .line 1438
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 1651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1652
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1653
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1655
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1656
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 320
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 321
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 322
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 328
    if-eqz v1, :cond_2

    .line 330
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 336
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 331
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 333
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 323
    :catch_1
    move-exception v2

    .line 328
    :goto_1
    if-eqz v0, :cond_0

    .line 330
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 331
    :catch_2
    move-exception v2

    goto :goto_0

    .line 325
    :catch_3
    move-exception v2

    .line 328
    :goto_2
    if-eqz v0, :cond_0

    .line 330
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 331
    :catch_4
    move-exception v2

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 330
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 333
    :cond_1
    :goto_4
    throw v2

    .line 331
    :catch_5
    move-exception v3

    goto :goto_4

    .line 328
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 325
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 323
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1284
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1285
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1287
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1289
    return-void
.end method

.method private setWallpaperDimension()V
    .locals 7

    .prologue
    .line 378
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 380
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 382
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v2, 0x1

    .line 384
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 385
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 386
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 387
    return-void

    .line 382
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 384
    .restart local v2       #isPortrait:Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    goto :goto_1

    .line 385
    .restart local v3       #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_2
.end method

.method private setupAnimations()V
    .locals 3

    .prologue
    .line 662
    const v0, 0x7f04000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    .line 663
    const v0, 0x7f04000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    .line 664
    const v0, 0x7f040017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 665
    const v0, 0x7f040018

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    .line 666
    const v0, 0x7f04001f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    .line 667
    const v0, 0x7f040020

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    .line 668
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    .line 669
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 670
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 671
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$2;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 678
    return-void
.end method

.method private setupViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 601
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 603
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 604
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Background;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    .line 605
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 606
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 608
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    .line 610
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/WidgetThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    .line 611
    new-instance v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    .line 612
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 613
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/WidgetThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    .line 614
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WidgetThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 616
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ErrorBar;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    .line 618
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f070047

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 619
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 620
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 622
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v3, 0x7f070048

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 624
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 625
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 626
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/Workspace;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 627
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Workspace;->setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    .line 629
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v3, 0x7f07004b

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeleteZone;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    .line 630
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeleteZone;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 631
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeleteZone;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 633
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v3, 0x7f07004a

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/HotSeats;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 634
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/HotSeats;->setLaucher(Lcom/miui/home/launcher/Launcher;)V

    .line 635
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 637
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderCling;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 638
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderCling;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 639
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 641
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setDragScoller(Lcom/miui/home/launcher/DragScroller;)V

    .line 642
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 643
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->setScrollView(Landroid/view/View;)V

    .line 644
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 647
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 648
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 649
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 651
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupAnimations()V

    .line 653
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 654
    const-string v1, "pref_key_guide_tips_editing_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 656
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0, v4}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 659
    :cond_0
    return-void
.end method

.method private showAddDialog(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 1646
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 1647
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showDialog(I)V

    .line 1648
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1587
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 1589
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/DeleteZone;->setVisibility(I)V

    .line 1590
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1592
    if-eqz p2, :cond_4

    .line 1614
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 1587
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1589
    goto :goto_1

    .line 1590
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    goto :goto_2

    .line 1595
    :cond_4
    if-eqz p1, :cond_6

    .line 1596
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterEditingMode()V

    .line 1601
    :goto_4
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_5
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1602
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_8

    move v0, v3

    :goto_6
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 1603
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/WidgetThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1604
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    if-eqz p1, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/WidgetThumbnailView;->setVisibility(I)V

    .line 1605
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_a

    .line 1606
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    invoke-virtual {v0, v3, v2, v2, v1}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 1607
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1608
    const-string v1, "pref_key_guide_tips_editing_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1598
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitEditingMode()V

    goto :goto_4

    .line 1601
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_5

    :cond_8
    move v0, v2

    .line 1602
    goto :goto_6

    .line 1603
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    goto :goto_7

    .line 1610
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 1612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    goto :goto_3
.end method

.method private showStatusBar(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 1574
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1575
    .local v1, launcherWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1576
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    :goto_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1579
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1580
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    move-object v2, v3

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 1581
    .local v2, vr:Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    .line 1582
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->skipNextResizedMsg()V

    .line 1584
    :cond_0
    return-void

    .line 1576
    .end local v2           #vr:Landroid/view/ViewRootImpl;
    :cond_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    goto :goto_0
.end method

.method private sortDesktopItems()V
    .locals 0

    .prologue
    .line 1071
    return-void
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 1267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1268
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.WallpaperSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1277
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 1340
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 1341
    .local v1, item:Lcom/miui/home/launcher/ItemInfo;
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    goto :goto_0

    .line 1343
    .end local v1           #item:Lcom/miui/home/launcher/ItemInfo;
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 341
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 342
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 343
    iget v3, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 344
    iget v3, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8

    .line 359
    if-eqz v2, :cond_2

    .line 361
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 367
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 362
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 364
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 346
    :catch_1
    move-exception v3

    .line 359
    :goto_1
    if-eqz v1, :cond_0

    .line 361
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 362
    :catch_2
    move-exception v3

    goto :goto_0

    .line 348
    :catch_3
    move-exception v0

    .line 350
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 359
    if-eqz v1, :cond_0

    .line 361
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 362
    :catch_4
    move-exception v3

    goto :goto_0

    .line 351
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 359
    :goto_3
    if-eqz v1, :cond_0

    .line 361
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    .line 362
    :catch_6
    move-exception v3

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_1

    .line 361
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 364
    :cond_1
    :goto_5
    throw v3

    .line 362
    :catch_7
    move-exception v4

    goto :goto_5

    .line 359
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 351
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 348
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 346
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_a
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method

.method private writeProcHandle(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "isEnable"

    .prologue
    .line 2053
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v0, fos:Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/miui/home/launcher/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2055
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2059
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 2054
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/Launcher;->DISABLE_TOUCH_IMPROVE:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2057
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2056
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1094
    iget-object v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1095
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1096
    iget v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->widgetFrameToCell(II)[I

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    aput v2, v1, v5

    .line 1099
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    aput v2, v1, v4

    .line 1102
    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    aget v3, v0, v5

    aget v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1103
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 1141
    :goto_0
    return-void

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1109
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    iget-object v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    iget-object v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1119
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v1, v7}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    goto :goto_0

    .line 1123
    :cond_1
    iget-object v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1124
    iget-object v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1126
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1127
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1130
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1132
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v7, v0, v3}, Lcom/miui/home/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1135
    :cond_2
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const-string v0, "android.intent.extra.shortcut.NAME"

    iget-object v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;
    .locals 10
    .parameter "info"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v9, 0x1

    .line 1192
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 1194
    iget-wide v2, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    .line 1201
    .local v1, newFolder:Lcom/miui/home/launcher/FolderIcon;
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v2, p2

    move v3, p3

    move v4, v9

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 1203
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    return-object v1

    .line 1197
    .end local v1           #newFolder:Lcom/miui/home/launcher/FolderIcon;
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->createFolderIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v8

    .line 1198
    .local v8, newFolder:Lcom/miui/home/launcher/FolderIcon;
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    move-object v1, v8

    .end local v8           #newFolder:Lcom/miui/home/launcher/FolderIcon;
    .restart local v1       #newFolder:Lcom/miui/home/launcher/FolderIcon;
    goto :goto_0
.end method

.method addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 1145
    iget v1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v3, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v8

    .line 1146
    .local v8, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    if-nez v8, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/miui/home/launcher/gadget/GadgetInfo;I)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    .line 1150
    .local v9, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    if-eqz v9, :cond_0

    .line 1153
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    iget v6, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v7, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 1157
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 1158
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 1160
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    move-object v1, v9

    check-cast v1, Landroid/view/View;

    iget v2, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v3, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 1163
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 1165
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1166
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0
.end method

.method addItem(Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 9
    .parameter "info"
    .parameter "insert"

    .prologue
    const/4 v6, 0x1

    .line 1987
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1988
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;)Z

    .line 1995
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    move-object v0, p1

    .line 1998
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 2000
    :cond_1
    return-void

    .line 1989
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 1990
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    goto :goto_0

    .line 1991
    :cond_3
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_0
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 1960
    return-void
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2003
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2004
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 2005
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_0

    .line 2006
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 2007
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 2008
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    .line 2016
    :goto_0
    return-void

    .line 2010
    :cond_0
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find user folder of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2013
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    move v7, v6

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_0
.end method

.method public bindAppMessage(Lcom/miui/home/launcher/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage;->addApplication(Lcom/miui/home/launcher/ShortcutIcon;Landroid/content/ComponentName;)V

    .line 2034
    return-void
.end method

.method public bindAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 11
    .parameter

    .prologue
    .line 1852
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1854
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1858
    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1859
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1860
    if-nez v2, :cond_0

    .line 1862
    const-string v0, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidget: appWidgetId has not been bound to a provider yet,ignore it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :goto_0
    return-void

    .line 1867
    :cond_0
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindAppWidget: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " belongs to component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1872
    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1873
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1875
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1878
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 1880
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound widget id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1947
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeDialog(I)V

    .line 1948
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    new-instance v1, Lcom/miui/home/launcher/Launcher$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$5;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1956
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2024
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->removeDialog(I)V

    .line 2025
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 2026
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/HotSeats;->removeItems(Ljava/util/ArrayList;)V

    .line 2027
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 2028
    .local v1, ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    iget-object v3, v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ApplicationsMessage;->removeApplication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2030
    .end local v1           #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :cond_0
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1842
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/miui/home/launcher/FolderInfo;>;"
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1843
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1844
    return-void
.end method

.method public bindGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 10
    .parameter "item"

    .prologue
    .line 1894
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/miui/home/launcher/gadget/GadgetInfo;I)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    .line 1895
    .local v9, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    if-nez v9, :cond_1

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    instance-of v0, v9, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object v1, v9

    .line 1898
    check-cast v1, Landroid/view/View;

    .line 1900
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1901
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 1903
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1905
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 1907
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1910
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1817
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ItemInfo;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-nez v3, :cond_0

    .line 1836
    :goto_0
    return-void

    .line 1819
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1821
    .local v2, workspace:Lcom/miui/home/launcher/Workspace;
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 1822
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 1823
    .local v1, item:Lcom/miui/home/launcher/ItemInfo;
    iget-wide v3, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1824
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    :cond_1
    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 1821
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1830
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    goto :goto_2

    .line 1835
    .end local v1           #item:Lcom/miui/home/launcher/ItemInfo;
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    goto :goto_0

    .line 1826
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method closeFolder()Z
    .locals 1

    .prologue
    .line 1443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    move-result v0

    return v0
.end method

.method closeFolder(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->close(Z)V

    .line 1449
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1450
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1451
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1452
    const/4 v0, 0x1

    .line 1454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1450
    :array_0
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 872
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 880
    return-void

    .line 874
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, ii:Lcom/miui/home/launcher/ItemIcon;
    instance-of v1, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 683
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 688
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    :cond_1
    return-object v0

    .line 685
    .restart local p2
    :cond_2
    instance-of v1, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_0

    .line 686
    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createFolderIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    goto :goto_0
.end method

.method createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    new-instance v1, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 1209
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1212
    const-wide/16 v2, -0x64

    move-object v0, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 1213
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 1218
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1293
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1311
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1298
    :sswitch_1
    const-string v1, "debug.launcher2.dumpstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->dumpState()V

    goto :goto_1

    .line 1304
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1305
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1294
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1305
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2065
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesktopItems.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->dumpState()V

    .line 2073
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    return-void
.end method

.method findGadget(J)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 4
    .parameter "itemId"

    .prologue
    .line 1171
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .local v0, g:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v2, v0

    .line 1172
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1177
    .end local v0           #g:Lcom/miui/home/launcher/gadget/Gadget;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishBindingItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1921
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1922
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1926
    :cond_0
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 1929
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1930
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1931
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1934
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 1936
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->requareUpdateMessages()V

    .line 1938
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->finishBinding()V

    .line 1939
    return-void
.end method

.method public getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCurrentOpenedFolder()Landroid/view/View;
    .locals 1

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 1465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 1777
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDragLayer()Lcom/miui/home/launcher/DragLayer;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method public getEditingState()I
    .locals 1

    .prologue
    .line 1528
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    return v0
.end method

.method public getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 5
    .parameter "fi"

    .prologue
    const/4 v0, 0x0

    .line 1971
    if-nez p1, :cond_1

    .line 1979
    :cond_0
    :goto_0
    return-object v0

    .line 1974
    :cond_1
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1975
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    goto :goto_0

    .line 1976
    :cond_2
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    goto :goto_0
.end method

.method getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 3
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 780
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/miui/home/launcher/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method getPaddingForWidget(Landroid/content/ComponentName;)Lcom/miui/home/launcher/Launcher$Padding;
    .locals 4
    .parameter

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 739
    new-instance v0, Lcom/miui/home/launcher/Launcher$Padding;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$Padding;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 743
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 749
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 753
    const v2, 0x30a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/Launcher$Padding;->left:I

    .line 754
    const v2, 0x30a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/Launcher$Padding;->right:I

    .line 755
    const v2, 0x30a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/Launcher$Padding;->top:I

    .line 756
    const v2, 0x30a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/Launcher$Padding;->bottom:I

    .line 759
    :cond_0
    :goto_0
    return-object v0

    .line 744
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1
    .parameter "si"

    .prologue
    .line 1983
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;
    .locals 4
    .parameter "si"

    .prologue
    .line 1963
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1965
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 1967
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSpanForWidget(Landroid/content/ComponentName;II[I)[I
    .locals 5
    .parameter "component"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "spanXY"

    .prologue
    .line 763
    if-nez p4, :cond_0

    .line 764
    const/4 v3, 0x2

    new-array p4, v3, [I

    .line 767
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/miui/home/launcher/Launcher$Padding;

    move-result-object v0

    .line 770
    .local v0, padding:Lcom/miui/home/launcher/Launcher$Padding;
    iget v3, v0, Lcom/miui/home/launcher/Launcher$Padding;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Lcom/miui/home/launcher/Launcher$Padding;->right:I

    add-int v2, v3, v4

    .line 771
    .local v2, requiredWidth:I
    iget v3, v0, Lcom/miui/home/launcher/Launcher$Padding;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Lcom/miui/home/launcher/Launcher$Padding;->bottom:I

    add-int v1, v3, v4

    .line 772
    .local v1, requiredHeight:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Lcom/miui/home/launcher/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    return-object v3
.end method

.method getTouchTranslator()Lcom/miui/home/launcher/DragController$TouchTranslator;
    .locals 2

    .prologue
    .line 1566
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1569
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method public isFolderShowing()Z
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    return v0
.end method

.method public isInEditing()Z
    .locals 2

    .prologue
    .line 1520
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivacyModeEnabled()Z
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLockSettings:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 391
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 399
    if-ne p2, v6, :cond_3

    .line 400
    sparse-switch p1, :sswitch_data_0

    .line 436
    :cond_0
    :goto_0
    :sswitch_0
    if-eq p1, v8, :cond_1

    const/4 v5, 0x7

    if-eq p1, v5, :cond_1

    if-eq p1, v7, :cond_1

    const/16 v5, 0x65

    if-eq p1, v5, :cond_1

    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_2

    .line 441
    :cond_1
    iput-boolean v7, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 443
    :cond_2
    return-void

    .line 402
    :sswitch_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/content/Intent;)V

    goto :goto_0

    .line 405
    :sswitch_2
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 408
    :sswitch_3
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    :sswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 415
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 416
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetItemId(Landroid/os/Bundle;)J

    move-result-wide v3

    .line 417
    .local v3, itemId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 419
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Launcher;->findGadget(J)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v2

    .line 420
    .local v2, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    if-eqz v2, :cond_0

    .line 421
    invoke-interface {v2, v1}, Lcom/miui/home/launcher/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    goto :goto_0

    .line 427
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v3           #itemId:J
    :cond_3
    if-ne p1, v8, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 430
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 431
    .local v0, appWidgetId:I
    if-eq v0, v6, :cond_0

    .line 432
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1351
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1352
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_3

    .line 1353
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1374
    .end local v3           #tag:Ljava/lang/Object;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local v3       #tag:Ljava/lang/Object;
    .restart local p1
    :cond_1
    move-object v0, v3

    .line 1355
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1356
    .local v0, info:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1357
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->installPresetApp(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 1359
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1360
    .local v1, intent:Landroid/content/Intent;
    new-array v2, v10, [I

    .line 1361
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1362
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1364
    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 1366
    iget v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-ne v10, v4, :cond_0

    .line 1367
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1368
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    .end local p1
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 1371
    .end local v0           #info:Lcom/miui/home/launcher/ShortcutInfo;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .restart local p1
    :cond_3
    instance-of v4, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_0

    .line 1372
    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-direct {p0, v3, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x100

    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const-string v4, "Launcher"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 223
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 225
    const v4, -0x10001

    const/high16 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 227
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 229
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->isHardwareAccelerated()Z

    move-result v4

    sput-boolean v4, Lcom/miui/home/launcher/Launcher;->mIsHardwareAccelerated:Z

    .line 233
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->updateGadgetBackup(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherApplication;->setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 236
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 237
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v4}, Lcom/miui/home/launcher/IconCache;->updateDefaultIcon()V

    .line 238
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v4}, Lcom/miui/home/launcher/IconCache;->flush()V

    .line 239
    new-instance v4, Lcom/miui/home/launcher/DragController;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/DragController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerContentObservers()V

    .line 243
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 244
    new-instance v4, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    const/16 v5, 0x400

    invoke-direct {v4, p0, p0, v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 246
    new-instance v4, Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/ApplicationsMessage;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 252
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkForLocaleChange()V

    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setWallpaperDimension()V

    .line 255
    const v4, 0x7f03001f

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->setContentView(I)V

    .line 256
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupViews()V

    .line 262
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 265
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 266
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 268
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v2, screenIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    new-instance v4, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v4, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLockSettings:Lmiui/security/ChooseLockSettingsHelper;

    .line 277
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1629
    packed-switch p1, :pswitch_data_0

    .line 1634
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1631
    :pswitch_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$CreateShortcut;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$CreateShortcut;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1629
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 958
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    :goto_0
    return v0

    .line 962
    :cond_0
    const v2, 0x7f0b0020

    invoke-interface {p1, v3, v3, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 964
    const/4 v2, 0x3

    const v3, 0x7f0b0011

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 967
    const/4 v2, 0x4

    const v3, 0x7f0b0012

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108004f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 970
    const/4 v2, 0x5

    const v3, 0x7f0b0013

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 973
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/home/launcher/LauncherPreferenceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 975
    const v3, 0x7f0b0022

    invoke-interface {p1, v0, v0, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x3020139

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x4c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 979
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 983
    const/4 v3, 0x6

    const v4, 0x7f0b0015

    invoke-interface {p1, v0, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080049

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x50

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v0, v1

    .line 986
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 920
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 922
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 924
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 926
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unbindDesktopItems()V

    .line 928
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 929
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 931
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    .line 933
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 934
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 935
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 936
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->destory()V

    .line 937
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 938
    return-void
.end method

.method onDropShortcut(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/content/Intent;)V
    .locals 4
    .parameter "d"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1181
    if-eqz p1, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aput v1, v0, v2

    .line 1183
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aput v1, v0, v3

    .line 1188
    :goto_0
    invoke-virtual {p0, p2, v3}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1189
    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    aput v2, v0, v2

    .line 1186
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastDragPos:[I

    aput v2, v0, v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 564
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 565
    .local v1, handled:Z
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x42

    if-eq p1, v2, :cond_1

    .line 566
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 568
    .local v0, gotKey:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    move-result v1

    .line 584
    .end local v0           #gotKey:Z
    .end local v1           #handled:Z
    :cond_0
    :goto_0
    return v1

    .line 580
    .restart local v1       #handled:Z
    :cond_1
    const/16 v2, 0x52

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1470
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1502
    :goto_0
    return v1

    .line 1474
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/CellLayout;

    if-nez v1, :cond_1

    .line 1475
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1478
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1481
    .local v0, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v1, v3

    .line 1482
    goto :goto_0

    .line 1485
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1486
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1488
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 1491
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->performHapticFeedback(II)Z

    :cond_3
    :goto_2
    move v1, v3

    .line 1502
    goto :goto_0

    .line 1488
    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    .line 1494
    :cond_5
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/miui/home/launcher/Folder;

    if-nez v1, :cond_3

    .line 1496
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->performHapticFeedback(II)Z

    .line 1498
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x40

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 884
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 887
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeSystemDialogs()V

    .line 898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 904
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 906
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eq v2, v6, :cond_3

    move v0, v1

    .line 908
    :cond_3
    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v0, 0x1

    .line 1037
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1066
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1039
    :pswitch_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v1, v3, :cond_1

    .line 1040
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addItems()V

    goto :goto_0

    .line 1041
    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v1, v2, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1043
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->sortDesktopItems()V

    goto :goto_0

    .line 1045
    :cond_2
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 1050
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startWallpaper()V

    goto :goto_0

    .line 1053
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    goto :goto_0

    .line 1056
    :pswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1057
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 1058
    :cond_3
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v1, v2, :cond_4

    .line 1059
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 1061
    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 467
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 468
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 470
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->enableTouchImprove(Z)V

    .line 471
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 472
    .local v0, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 473
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1639
    .line 1643
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 991
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 992
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 993
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    .line 995
    :goto_1
    iget v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    .line 998
    :goto_2
    if-eqz v0, :cond_7

    .line 999
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080033

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0b0010

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x41

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1004
    invoke-direct {p0, v2, v2, v2}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMenuAddInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1005
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMenuAddInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1019
    :cond_0
    :goto_4
    if-nez v4, :cond_1

    move v2, v1

    :cond_1
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1020
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v0, v6, :cond_9

    .line 1021
    :cond_2
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0b0014

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x42

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1024
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1032
    :goto_5
    return v1

    :cond_3
    move v0, v2

    .line 992
    goto :goto_0

    :cond_4
    move v3, v2

    .line 993
    goto :goto_1

    :cond_5
    move v4, v2

    .line 995
    goto :goto_2

    :cond_6
    move v0, v2

    .line 1005
    goto :goto_3

    .line 1006
    :cond_7
    if-eqz v3, :cond_8

    .line 1007
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x108003e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0b0020

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x45

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1011
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    .line 1012
    :cond_8
    if-eqz v4, :cond_0

    .line 1013
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x108009c

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0b0021

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x53

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1017
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    .line 1026
    :cond_9
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0b0013

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x50

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1029
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_5
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 448
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 449
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 452
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 453
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 454
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ApplicationsMessage;->requareUpdateMessages()V

    .line 455
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->updateWallpaper()V

    .line 456
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->enableTouchImprove(Z)V

    .line 457
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 458
    .local v0, statusBar:Landroid/app/StatusBarManager;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 459
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    .line 460
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 553
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1081
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 543
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 544
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onStart()V

    .line 545
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    .line 546
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 547
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 528
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 529
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->onStop()V

    .line 530
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 531
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 538
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 539
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onWorkspaceDropExternalComplate()V
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 1619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 1621
    :cond_0
    return-void
.end method

.method preRemoveItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1221
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1222
    .local v0, vg:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v1, :cond_0

    .line 1223
    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    .end local v0           #vg:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->preRemoveView(Landroid/view/View;)V

    .line 1225
    :cond_0
    return-void
.end method

.method public reloadWidgetPreview()V
    .locals 2

    .prologue
    .line 857
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 861
    return-void

    .line 858
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 831
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 832
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1227
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1228
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1229
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 1230
    .local v0, info:Lcom/miui/home/launcher/FolderInfo;
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 1231
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 1232
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1235
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    return-void
.end method

.method public removeGadget(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 839
    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 840
    const/4 v1, 0x0

    .line 841
    .local v1, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .local v0, g:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v3, v0

    .line 842
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    move-object v1, v0

    .line 847
    .end local v0           #g:Lcom/miui/home/launcher/gadget/Gadget;
    :cond_1
    if-eqz v1, :cond_2

    .line 848
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 850
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 853
    .end local v1           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public scrollToDefault()V
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, cs:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 485
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 487
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 489
    :cond_0
    return-void
.end method

.method public setEditingState(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1536
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPrivacyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1543
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1560
    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 1561
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    if-eq p1, v4, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/miui/home/launcher/ErrorBar;->setMargins(IIII)V

    goto :goto_0

    .line 1545
    :pswitch_0
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v5, v0, :cond_3

    move v0, v1

    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(ZZ)V

    .line 1546
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1547
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v3, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v3, v5, :cond_4

    :goto_4
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1545
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1547
    goto :goto_4

    .line 1550
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->showEditPanel(ZZ)V

    .line 1551
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1552
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    .line 1553
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    goto :goto_1

    .line 1556
    :pswitch_2
    invoke-direct {p0, v1, v1}, Lcom/miui/home/launcher/Launcher;->showEditPanel(ZZ)V

    .line 1557
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    goto :goto_1

    .line 1561
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    .line 865
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeleteZone;->onShowError()V

    .line 866
    return-void
.end method

.method public showPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1506
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1509
    :cond_0
    if-eqz p1, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterPreviewMode()V

    .line 1514
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 1515
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1516
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->showPreview(Z)V

    goto :goto_0

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitPreviewMode()V

    goto :goto_1

    .line 1514
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1515
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_3
.end method

.method startActivity(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1377
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1379
    :try_start_0
    instance-of v1, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 1380
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    move-object v1, v0

    .line 1381
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch()V

    .line 1382
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 1383
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->onLaunchApplication(Landroid/content/ComponentName;)V

    .line 1385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :goto_0
    return-void

    .line 1386
    :catch_0
    move-exception v1

    .line 1387
    const v2, 0x7f0b001e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1388
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher cannot start this activity(app2sd?)tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b0007

    const/4 v1, 0x0

    .line 1395
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 1396
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1405
    :goto_0
    return-void

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1399
    :catch_1
    move-exception v0

    .line 1400
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1401
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBinding()V
    .locals 4

    .prologue
    .line 1787
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1788
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1790
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1791
    .local v2, workspace:Lcom/miui/home/launcher/Workspace;
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    .line 1792
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1794
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->removeAllViewsInLayout()V

    .line 1792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1808
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v3}, Lcom/miui/home/launcher/HotSeats;->startBinding()V

    .line 1809
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 944
    if-nez p1, :cond_0

    .line 946
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    .line 947
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearTypedText()V

    .line 950
    :goto_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 952
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 954
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    .line 2038
    return-void
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset(FFFF)V

    .line 1768
    return-void
.end method
