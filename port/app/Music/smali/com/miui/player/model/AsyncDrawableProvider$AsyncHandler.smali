.class Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;
.super Landroid/os/Handler;
.source "AsyncDrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AsyncDrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/AsyncDrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/AsyncDrawableProvider;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 258
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.AsyncHandler;"
    iput-object p1, p0, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    .line 259
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.AsyncHandler;"
    const/4 v8, 0x1

    .line 264
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 265
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;

    .line 266
    .local v4, rh:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    iget-object v1, v4, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;->mInfo:Ljava/lang/Object;

    .line 267
    .local v1, info:Ljava/lang/Object;,"TT;"
    iget-object v2, v4, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;->mKey:Ljava/lang/String;

    .line 269
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 271
    .local v3, ret:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v6, v6, Lcom/miui/player/model/AsyncDrawableProvider;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 272
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x1

    .line 273
    .local v5, status:Z
    if-eqz v0, :cond_1

    .line 274
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v6, v6, Lcom/miui/player/model/AsyncDrawableProvider;->mWorker:Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;

    invoke-interface {v6, v0, v1, v8}, Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;->getDrawable(Landroid/content/Context;Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 279
    :goto_0
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v6, v6, Lcom/miui/player/model/AsyncDrawableProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 280
    new-instance v6, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;

    iget-object v7, p0, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-direct {v6, v7, v2, v3, v5}, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;-><init>(Lcom/miui/player/model/AsyncDrawableProvider;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v6, v6, Lcom/miui/player/model/AsyncDrawableProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #info:Ljava/lang/Object;,"TT;"
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ret:Landroid/graphics/drawable/Drawable;
    .end local v4           #rh:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    .end local v5           #status:Z
    :cond_0
    return-void

    .line 276
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #info:Ljava/lang/Object;,"TT;"
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #ret:Landroid/graphics/drawable/Drawable;
    .restart local v4       #rh:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    .restart local v5       #status:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
