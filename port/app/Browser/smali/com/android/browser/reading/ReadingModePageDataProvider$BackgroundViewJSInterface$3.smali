.class Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$3;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->nextLinkPathNotFound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;


# direct methods
.method constructor <init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$3;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$3;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/reading/ReadingModePageDataProvider;->tryNextLinkPath()V
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$500(Lcom/android/browser/reading/ReadingModePageDataProvider;)V

    .line 302
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$3;->this$1:Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/reading/ReadingModePageDataProvider;->onTaskComplete()V
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$300(Lcom/android/browser/reading/ReadingModePageDataProvider;)V

    .line 303
    return-void
.end method
