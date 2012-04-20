.class Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->setCommentsHTML(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

.field final synthetic val$commentsHTML:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iput-object p2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->val$commentsHTML:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->val$commentsHTML:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/browser/util/JavaScriptUtils;->preprocessJSParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mComments:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$602(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/reading/ReadingModePageDataProvider;->onTaskComplete()V
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$300(Lcom/android/browser/reading/ReadingModePageDataProvider;)V

    .line 331
    return-void
.end method
