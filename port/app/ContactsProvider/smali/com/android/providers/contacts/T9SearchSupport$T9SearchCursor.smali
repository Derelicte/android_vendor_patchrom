.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9SearchCursor"
.end annotation


# instance fields
.field private mCount:I

.field private mExtras:Landroid/os/Bundle;

.field private mIndex:I

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mExtras:Landroid/os/Bundle;

    .line 318
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mCount:I

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mExtras:Landroid/os/Bundle;

    .line 318
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mCount:I

    .line 409
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 411
    return-void
.end method

.method private checkBoundary()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 381
    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-gez v1, :cond_0

    .line 382
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 389
    :goto_0
    return v0

    .line 385
    :cond_0
    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    goto :goto_0

    .line 389
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static merge(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "first"
    .parameter "second"

    .prologue
    .line 321
    instance-of v10, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    if-eqz v10, :cond_0

    instance-of v10, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    if-nez v10, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_1
    move-object v2, p0

    .line 325
    check-cast v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .local v2, f:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    move-object v8, p1

    .line 326
    check-cast v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 328
    .local v8, s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-virtual {v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 329
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>()V

    goto :goto_0

    .line 332
    :cond_2
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>()V

    .line 333
    .local v0, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v9, spT9SearchResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v3, 0x0

    .line 336
    .local v3, hasContactSPDivider:Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 337
    .local v1, dataIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v11, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v11

    .line 338
    :try_start_0
    iget-object v10, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 339
    .local v7, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v12, v10, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 340
    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->isContactSPDivider(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    invoke-static {v10}, Lcom/android/providers/contacts/T9SearchSupport;->access$200(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 341
    const/4 v3, 0x1

    goto :goto_1

    .line 342
    :cond_4
    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    invoke-static {v10}, Lcom/android/providers/contacts/T9SearchSupport;->access$000(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 343
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 345
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_5
    :try_start_1
    iget-object v10, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    .end local v7           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    const-wide/high16 v5, -0x8000

    .line 352
    .local v5, lastDataId:J
    iget-object v11, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v11

    .line 353
    :try_start_2
    iget-object v10, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 354
    .restart local v7       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v12, v10, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v12, v10, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    cmp-long v10, v5, v12

    if-eqz v10, :cond_7

    .line 356
    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v10, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 357
    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->isContactSPDivider(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    invoke-static {v10}, Lcom/android/providers/contacts/T9SearchSupport;->access$200(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 358
    const/4 v3, 0x1

    goto :goto_2

    .line 359
    :cond_8
    iget-object v10, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    invoke-static {v10}, Lcom/android/providers/contacts/T9SearchSupport;->access$000(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 360
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 366
    .end local v7           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 362
    .restart local v7       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_9
    :try_start_3
    iget-object v10, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 366
    .end local v7           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_a
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 367
    if-eqz v3, :cond_b

    .line 368
    iget-object v10, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->makeContactSPDividerPosExtra(I)Landroid/os/Bundle;
    invoke-static {v10}, Lcom/android/providers/contacts/T9SearchSupport;->access$300(I)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->setExtras(Landroid/os/Bundle;)V

    .line 369
    iget-object v10, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->makeContactSPDivider()Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->access$400()Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_b
    iget-object v10, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    iget-object v10, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mCount:I

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 623
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 695
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 595
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    .line 546
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 547
    sget-object v1, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    .end local v0           #i:I
    :goto_1
    return v0

    .line 546
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, index:I
    if-gez v0, :cond_0

    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 571
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 8

    .prologue
    .line 418
    iget v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mCount:I

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_3

    .line 419
    monitor-enter p0

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, hasDivderBetweenContactAndSP:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    .line 422
    .local v4, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    .line 423
    const-wide/high16 v2, -0x8000

    .line 424
    .local v2, lastDataId:J
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 425
    .local v5, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v6, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v6, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 426
    iget-object v6, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 432
    if-nez v0, :cond_1

    iget-object v6, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->access$000(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->makeContactSPDividerPosExtra(I)Landroid/os/Bundle;
    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->access$300(I)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->setExtras(Landroid/os/Bundle;)V

    .line 435
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->makeContactSPDivider()Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->access$400()Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    const/4 v0, 0x1

    .line 438
    :cond_1
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lastDataId:J
    .end local v4           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v5           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #lastDataId:J
    .restart local v4       #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mCount:I

    .line 444
    .end local v0           #hasDivderBetweenContactAndSP:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lastDataId:J
    .end local v4           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_3
    iget v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mCount:I

    return v6
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 675
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 667
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 4
    .parameter "columnIndex"

    .prologue
    const-wide/16 v1, 0x0

    .line 647
    sparse-switch p1, :sswitch_data_0

    move-wide v0, v1

    .line 659
    :goto_0
    return-wide v0

    .line 650
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    goto :goto_0

    .line 652
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    goto :goto_0

    .line 654
    :sswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    goto :goto_0

    :cond_0
    move-wide v0, v1

    goto :goto_0

    .line 657
    :sswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    goto :goto_0

    .line 647
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xb -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 631
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 603
    sparse-switch p1, :sswitch_data_0

    .line 615
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 605
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    goto :goto_0

    .line 607
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 609
    :sswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->getMatchedDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 611
    :sswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    goto :goto_0

    .line 613
    :sswitch_4
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    goto :goto_0

    .line 603
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xc -> :sswitch_2
        0xf -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 538
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 6
    .parameter "columnIndex"

    .prologue
    const/4 v1, 0x0

    .line 683
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 687
    :goto_0
    return v0

    .line 685
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 460
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 461
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 479
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 488
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 497
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 469
    iput p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 470
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 506
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 726
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 740
    return-void
.end method

.method public requery()Z
    .locals 2

    .prologue
    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 787
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 771
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mExtras:Landroid/os/Bundle;

    .line 772
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 754
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 733
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 747
    return-void
.end method
