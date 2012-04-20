.class public Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/reading/ReadingModePageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundViewJSInterface"
.end annotation


# instance fields
.field private forTest:Z

.field final synthetic this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/reading/ReadingModePageDataProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commentsPathNotFound()V
    .locals 2

    .prologue
    .line 309
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$4;

    invoke-direct {v1, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$4;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public contentPathNotFound(Ljava/lang/String;)V
    .locals 2
    .parameter "xpath"

    .prologue
    .line 263
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$1;

    invoke-direct {v1, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$1;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doNothing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->contentPathNotFound(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->titlePathNotFound(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->nextLinkPathNotFound(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->commentsPathNotFound()V

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->setCommentsHTML(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->setContentHTML(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->setTitleHTML(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->setNextLinkUrl(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->onImageLinkFound(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->log(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    .line 259
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public nextLinkPathNotFound(Ljava/lang/String;)V
    .locals 2
    .parameter "xpath"

    .prologue
    .line 294
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$3;

    invoke-direct {v1, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$3;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onImageLinkFound(Ljava/lang/String;)V
    .locals 1
    .parameter "imageUrl"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #setter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$1002(Lcom/android/browser/reading/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public setCommentsHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "commentsHTML"

    .prologue
    .line 322
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$5;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setContentHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "contentHTML"

    .prologue
    .line 336
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$6;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$6;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setNextLinkUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "nextUrl"

    .prologue
    .line 365
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$8;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTitleHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "titleHTML"

    .prologue
    .line 351
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 355
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$7;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$7;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public titlePathNotFound(Ljava/lang/String;)V
    .locals 2
    .parameter "xpath"

    .prologue
    .line 279
    iget-boolean v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->forTest:Z

    if-eqz v1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/reading/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/reading/ReadingModePageDataProvider;->mController:Lcom/android/browser/reading/ReadingModeController;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->access$100(Lcom/android/browser/reading/ReadingModePageDataProvider;)Lcom/android/browser/reading/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface$2;-><init>(Lcom/android/browser/reading/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
