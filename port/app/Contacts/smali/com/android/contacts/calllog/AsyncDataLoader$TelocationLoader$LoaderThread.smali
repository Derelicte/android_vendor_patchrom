.class Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "AsyncDataLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    .line 365
    const-string v0, "TelocationLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    .line 366
    return-void
.end method

.method private loadTelocationFromDatabase()V
    .locals 5

    .prologue
    .line 390
    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 391
    .local v0, count:I
    if-nez v0, :cond_1

    .line 401
    :cond_0
    return-void

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->access$600(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->cacheTelocation(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->access$700(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    #calls: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->obtainTelocationsToLoad(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->access$400(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;Ljava/util/ArrayList;)V

    .line 384
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->loadTelocationFromDatabase()V

    .line 385
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->access$500(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    return-void
.end method
