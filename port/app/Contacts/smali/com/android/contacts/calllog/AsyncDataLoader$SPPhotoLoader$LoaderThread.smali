.class Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "AsyncDataLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;
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

.field private final mPhotoIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "resolver"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    .line 712
    const-string v0, "SPPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 706
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    .line 707
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    .line 713
    iput-object p2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 714
    return-void
.end method

.method private loadSPPhotosFromDatabase()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 738
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 739
    .local v7, count:I
    if-nez v7, :cond_1

    .line 780
    :cond_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 744
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "addr IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_3

    .line 746
    if-eqz v9, :cond_2

    .line 747
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    const/4 v8, 0x0

    .line 755
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->SP_COLUMNS:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->access$1100(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->access$1200(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 761
    if-eqz v8, :cond_5

    .line 762
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 763
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 764
    .local v10, number:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 765
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    #calls: Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->cacheBitmap(Ljava/lang/String;[B)V
    invoke-static {v0, v10, v6}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->access$1300(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Ljava/lang/String;[B)V

    .line 766
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 770
    .end local v6           #bytes:[B
    .end local v10           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 771
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 770
    :cond_5
    if-eqz v8, :cond_6

    .line 771
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 776
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 777
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->cacheBitmap(Ljava/lang/String;[B)V
    invoke-static {v1, v0, v11}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->access$1300(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Ljava/lang/String;[B)V

    .line 777
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mNumbers:Ljava/util/ArrayList;

    #calls: Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->access$900(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 732
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->loadSPPhotosFromDatabase()V

    .line 733
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->this$1:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->access$1000(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 734
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 724
    return-void
.end method
