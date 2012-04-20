.class public Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
.super Ljava/lang/Object;
.source "ScanContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/ScanContactsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RawContactData"
.end annotation


# instance fields
.field private mDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeleted:Z

.field public mN:I

.field public mName:Ljava/lang/String;

.field public mPhotoId:J

.field public mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/preference/ScanContactsLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/preference/ScanContactsLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->this$0:Lcom/android/contacts/preference/ScanContactsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"
    .parameter "value"

    .prologue
    .line 522
    if-nez p2, :cond_0

    .line 534
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 527
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v1, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 532
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public compare(Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;)Z
    .locals 12
    .parameter "another"

    .prologue
    const/4 v10, 0x0

    .line 537
    if-nez p1, :cond_0

    move v9, v10

    .line 584
    :goto_0
    return v9

    .line 541
    :cond_0
    iget-object v9, p1, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    iget-object v11, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eq v9, v11, :cond_1

    move v9, v10

    .line 542
    goto :goto_0

    .line 545
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 546
    .local v5, mimeType:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v10

    .line 547
    goto :goto_0

    .line 550
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 551
    .local v0, dataListA:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v1, dataListB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p1, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 554
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-eq v9, v11, :cond_4

    move v9, v10

    .line 555
    goto :goto_0

    .line 558
    :cond_4
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 559
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 560
    .local v7, numberA:Ljava/lang/String;
    const/4 v6, 0x0

    .line 561
    .local v6, number:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 562
    .local v8, numberB:Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 563
    move-object v6, v8

    .line 571
    .end local v8           #numberB:Ljava/lang/String;
    :cond_6
    :goto_2
    if-nez v6, :cond_8

    move v9, v10

    .line 572
    goto/16 :goto_0

    .line 565
    .restart local v8       #numberB:Ljava/lang/String;
    :cond_7
    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 566
    move-object v6, v8

    .line 567
    goto :goto_2

    .line 574
    .end local v8           #numberB:Ljava/lang/String;
    :cond_8
    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 578
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #numberA:Ljava/lang/String;
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move v9, v10

    .line 579
    goto/16 :goto_0

    .line 584
    .end local v0           #dataListA:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #dataListB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public getDatas()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDatas:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mRawContactId:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDeleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0
    .parameter "deleted"

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mDeleted:Z

    .line 511
    return-void
.end method

.method public setRawContactId(J)V
    .locals 0
    .parameter "rawContactId"

    .prologue
    .line 518
    iput-wide p1, p0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mRawContactId:J

    .line 519
    return-void
.end method
