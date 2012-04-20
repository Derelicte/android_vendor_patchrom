.class Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/reading/ReadingModePageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSTask"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFunction:Ljava/lang/String;

.field private mParams:Ljava/lang/String;

.field private mState:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

.field private mView:Lcom/android/browser/MiuiBrowserWebView;

.field final synthetic this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/reading/ReadingModePageDataProvider;Lcom/android/browser/MiuiBrowserWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "fileName"
    .parameter "funcName"
    .parameter "params"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/MiuiBrowserWebView;

    .line 402
    iput-object p3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mFileName:Ljava/lang/String;

    .line 403
    iput-object p4, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mFunction:Ljava/lang/String;

    .line 404
    iput-object p5, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mParams:Ljava/lang/String;

    .line 405
    sget-object v0, Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;->State_Normal:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    .line 406
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    .line 419
    return-void
.end method

.method public execute()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserWebView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/MiuiBrowserWebView;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mFunction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mParams:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromAsset(Lcom/android/browser/MiuiBrowserWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;->State_Executing:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    goto :goto_0
.end method

.method public getState()Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/reading/ReadingModePageDataProvider$TaskStateEnum;

    return-object v0
.end method

.method public getView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/MiuiBrowserWebView;

    return-object v0
.end method
