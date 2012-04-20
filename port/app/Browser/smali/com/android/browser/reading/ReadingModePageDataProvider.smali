.class public Lcom/android/browser/reading/ReadingModePageDataProvider;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;,
        Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;,
        Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field private mAdsXPath:Ljava/lang/String;

.field mCallback:Landroid/os/Handler$Callback;

.field private mComments:Ljava/lang/String;

.field private mCommentsXPath:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContentXPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/android/browser/reading/ReadingModeController;

.field private mCurrentContentPathCount:I

.field private mCurrentNextLinkPathCount:I

.field private mCurrentTitlePathCount:I

.field private mFirstPage:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;

.field private mNextLinkXPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextUrl:Ljava/lang/String;

.field private mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTitleXPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/android/browser/MiuiBrowserWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/reading/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/reading/ReadingModeController;)V
    .locals 2
    .parameter "controller"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    .line 27
    iput v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    .line 28
    iput v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    .line 29
    iput v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    .line 37
    new-instance v0, Lcom/android/browser/reading/ReadingModePageDataProvider$1;

    invoke-direct {v0, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider$1;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCallback:Landroid/os/Handler$Callback;

    .line 50
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/reading/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->executeQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/browser/reading/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/reading/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextContentPath()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/reading/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->onTaskComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/reading/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextTitlePath()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/reading/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextLinkPath()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mComments:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    return-object p1
.end method

.method private executeQuery()V
    .locals 4

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/browser/reading/ReadingModeController;->onReadingDataReady(Lcom/android/browser/reading/ReadingModePageDataProvider;Z)V

    .line 123
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextContentPath()V

    .line 101
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextTitlePath()V

    .line 105
    :cond_1
    const/4 v0, 0x0

    .line 106
    .local v0, isFirstPage:Z
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v2}, Lcom/android/browser/MiuiBrowserWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const/4 v0, 0x1

    .line 109
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 111
    iget v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 114
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextLinkPath()V

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCommentsXPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 118
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryToGetComments()V

    .line 121
    :cond_5
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;

    .line 122
    .local v1, task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->execute()V

    goto :goto_0
.end method

.method private insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .parameter "funcName"
    .parameter "params"

    .prologue
    .line 212
    new-instance v0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider;Lcom/android/browser/MiuiBrowserWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method private onTaskComplete()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;

    .line 223
    .local v0, task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v1

    sget-object v2, Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->getView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    if-ne v1, v2, :cond_3

    .line 227
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, p0, v1}, Lcom/android/browser/reading/ReadingModeController;->onReadingDataReady(Lcom/android/browser/reading/ReadingModePageDataProvider;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    check-cast v0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;

    .line 231
    .restart local v0       #task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    :goto_2
    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v1

    sget-object v2, Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 232
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    check-cast v0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;

    .restart local v0       #task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    goto :goto_2

    .line 235
    :cond_4
    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v1

    sget-object v2, Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;->State_Normal:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    if-ne v1, v2, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->execute()V

    goto :goto_0
.end method

.method private tryNextContentPath()V
    .locals 4

    .prologue
    .line 170
    iget v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 173
    sget-object v1, Lcom/android/browser/reading/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v2, "content not found"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mAdsXPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "js/xpath.js"

    const-string v2, "getContentHTMLFromXPath"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/browser/reading/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    goto :goto_0
.end method

.method private tryNextLinkPath()V
    .locals 5

    .prologue
    .line 201
    iget v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 202
    sget-object v0, Lcom/android/browser/reading/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v1, "link not found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v1, "js/xpath.js"

    const-string v2, "getNextLinkFromXPath"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    goto :goto_0
.end method

.method private tryNextTitlePath()V
    .locals 5

    .prologue
    .line 185
    iget v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 186
    sget-object v0, Lcom/android/browser/reading/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v1, "title not found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const-string v1, "js/xpath.js"

    const-string v2, "getTitleHTMLFromXPath"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    goto :goto_0

    .line 195
    :cond_1
    iget v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    .line 196
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextTitlePath()V

    goto :goto_0
.end method

.method private tryToGetComments()V
    .locals 4

    .prologue
    .line 166
    const-string v0, "js/xpath.js"

    const-string v1, "getCommentsHTMLFromXPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCommentsXPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/reading/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public cancelQuery()V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;

    .line 156
    .local v1, task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v2

    sget-object v3, Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;->State_Executing:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    if-eq v2, v3, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->cancelTask()V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1           #task:Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
    :cond_1
    return-void
.end method

.method public doQuery(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter "commentsXPath"
    .parameter "firstPage"
    .parameter "adsXPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, contentXPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, titleXPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, nextLinkXPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 74
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    if-nez v2, :cond_0

    .line 93
    .end local p6
    :goto_0
    return-void

    .line 77
    .restart local p6
    :cond_0
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    .line 78
    iput-object p2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    .line 79
    iput-object p3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    .line 80
    iput-object p4, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCommentsXPath:Ljava/lang/String;

    .line 81
    iput v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    .line 82
    iput v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    .line 83
    iput v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    .line 84
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    .line 86
    if-nez p6, :cond_1

    const-string p6, ""

    .end local p6
    :cond_1
    iput-object p6, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mAdsXPath:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 90
    .local v0, handle:Landroid/os/Handler;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 91
    .local v1, message:Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mComments:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNextLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/browser/MiuiBrowserWebView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    if-eq v1, p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mView:Lcom/android/browser/MiuiBrowserWebView;

    .line 58
    :cond_0
    new-instance v0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    invoke-direct {v0, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider;)V

    .line 62
    .local v0, reading:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;
    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->doNothing()V

    .line 63
    const-string v1, "reading"

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/MiuiBrowserWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    .line 69
    return-void
.end method
