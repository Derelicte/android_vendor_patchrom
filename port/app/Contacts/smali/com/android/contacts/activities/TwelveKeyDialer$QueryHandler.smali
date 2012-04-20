.class final Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/activities/TwelveKeyDialer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 432
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/activities/TwelveKeyDialer;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 433
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 427
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 437
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/TwelveKeyDialer;

    .line 439
    .local v0, activity:Lcom/android/contacts/activities/TwelveKeyDialer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    #calls: Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$000(Lcom/android/contacts/activities/TwelveKeyDialer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$100(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b01e7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 447
    :cond_0
    :goto_0
    if-nez p3, :cond_3

    .line 480
    :cond_1
    :goto_1
    return-void

    .line 443
    :cond_2
    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$100(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b01e5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 451
    :cond_3
    const/16 v4, 0x35

    if-ne p1, v4, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_6

    .line 452
    #calls: Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$000(Lcom/android/contacts/activities/TwelveKeyDialer;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 454
    const-string v2, ""

    .line 456
    .local v2, number:Ljava/lang/String;
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 457
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v2}, Lmiui/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v3

    .line 459
    .local v3, presentation:I
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_4

    .line 461
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v3           #presentation:I
    :cond_4
    :goto_2
    #setter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$202(Lcom/android/contacts/activities/TwelveKeyDialer;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    #calls: Lcom/android/contacts/activities/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$300(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    .line 469
    .end local v2           #number:Ljava/lang/String;
    :cond_5
    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/contacts/calllog/DialerListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 473
    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsTextChanged:Z
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$500(Lcom/android/contacts/activities/TwelveKeyDialer;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 474
    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/EditableListView;->setSelection(I)V

    .line 475
    #setter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsTextChanged:Z
    invoke-static {v0, v6}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$502(Lcom/android/contacts/activities/TwelveKeyDialer;Z)Z

    goto :goto_1

    .line 463
    .restart local v2       #number:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 464
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "TwelveKeyDialer"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 478
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #number:Ljava/lang/String;
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
