.class Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->setNextLinkUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

.field final synthetic val$nextUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iput-object p2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->val$nextUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->val$nextUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$902(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/reading/ReadingModePageDataProvider;->onTaskComplete()V
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$300(Lcom/android/browser/reading/ReadingModePageDataProvider;)V

    .line 374
    return-void
.end method
