.class public Lcom/miui/milk/control/cloud/AddressBookCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "AddressBookCloudController.java"


# instance fields
.field private mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

.field private mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

.field private mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

.field private mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/GroupTrackerStore;Lcom/miui/milk/storage/ContactTrackerStore;)V
    .locals 3
    .parameter "context"
    .parameter "gVersionStore"
    .parameter "cVersionStore"

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/miui/milk/source/contact2/GroupManager;

    invoke-direct {v0, p1, v2}, Lcom/miui/milk/source/contact2/GroupManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    .line 47
    new-instance v0, Lcom/miui/milk/source/contact2/ContactManager;

    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-direct {v0, p1, v2, v1}, Lcom/miui/milk/source/contact2/ContactManager;-><init>(Landroid/content/Context;ZLcom/miui/milk/source/contact2/GroupManager;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    .line 48
    new-instance v0, Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/contact2/GroupVersionTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/GroupTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    .line 49
    new-instance v0, Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-direct {v0, p1, p3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/ContactTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    .line 50
    return-void
.end method

.method private checkEmpty()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->resetStore()V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->resetStore()V

    .line 1019
    :cond_1
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->closeStore()V

    .line 1028
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->closeStore()V

    .line 1029
    return-void
.end method

.method private contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p3, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 927
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 950
    :goto_0
    return-void

    .line 928
    :cond_0
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ops size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v6, p1}, Lcom/miui/milk/source/contact2/ContactManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 931
    .local v5, res:[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_2

    .line 933
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 934
    .local v2, key:Ljava/lang/Integer;
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 937
    .local v3, luid:J
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 938
    .local v0, guid:Ljava/lang/Long;
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v10, v8}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 941
    .end local v0           #guid:Ljava/lang/Long;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #luid:J
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 942
    .local v2, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v2, v10, v6}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 947
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 948
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 949
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p3, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 902
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 925
    :goto_0
    return-void

    .line 903
    :cond_0
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ops size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v6, p1}, Lcom/miui/milk/source/contact2/GroupManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 906
    .local v5, res:[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_2

    .line 908
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 909
    .local v2, key:Ljava/lang/Integer;
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 912
    .local v3, luid:J
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 913
    .local v0, guid:Ljava/lang/Long;
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v10, v8}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 916
    .end local v0           #guid:Ljava/lang/Long;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #luid:J
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 917
    .local v2, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v2, v10, v6}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 922
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 923
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 924
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private importToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Z)V
    .locals 13
    .parameter "contact"
    .parameter "account"
    .parameter "needTrack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 753
    if-eqz p2, :cond_0

    .line 754
    const-string v10, "AddressBookCloudController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "import contact to account : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 758
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, guid:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v10, v2}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 762
    .local v7, luids:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v6, luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 764
    .local v5, luid:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12, p2}, Lcom/miui/milk/source/contact2/ContactManager;->exists(JLandroid/accounts/Account;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 765
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    :cond_2
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/miui/milk/source/contact2/ContactManager;->exists(J)Z

    move-result v10

    if-nez v10, :cond_1

    .line 768
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v10, v5}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->removeItemKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 787
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #guid:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #luid:Ljava/lang/String;
    .end local v6           #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #luids:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 788
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v10, "AddressBookCloudController"

    const-string v11, "Cannot add contact "

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    throw v10

    .line 773
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #luids:[Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 774
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 775
    .restart local v5       #luid:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->update(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)V

    .line 776
    if-eqz p3, :cond_4

    .line 777
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 781
    .end local v5           #luid:Ljava/lang/String;
    .local v3, i$:I
    :cond_5
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v10, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->add(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 782
    .local v8, newLuid:J
    if-eqz p3, :cond_6

    .line 783
    iget-object v10, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12, v2}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 791
    .end local v3           #i$:I
    .end local v8           #newLuid:J
    :cond_6
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 793
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->openStore()V

    .line 1023
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->openStore()V

    .line 1024
    return-void
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20
    .parameter "contact"
    .parameter "account"
    .parameter "needTrack"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 798
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p5, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p6, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 799
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare import contact to account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 803
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v12

    .line 804
    .local v12, guid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v4, v12}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 807
    .local v19, luids:[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v18, luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v10, v19

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v17, v10, v14

    .line 809
    .local v17, luid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v6, v0}, Lcom/miui/milk/source/contact2/ContactManager;->exists(JLandroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 810
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 811
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/milk/source/contact2/ContactManager;->exists(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->removeItemKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 893
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #guid:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v17           #luid:Ljava/lang/String;
    .end local v18           #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #luids:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 894
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "AddressBookCloudController"

    const-string v5, "Cannot prepare import contact "

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    throw v4

    .line 819
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #guid:Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    .restart local v18       #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #luids:[Ljava/lang/String;
    :cond_3
    if-eqz v18, :cond_a

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 820
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 821
    .restart local v17       #luid:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 822
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 823
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_6

    .line 851
    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    .line 852
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2

    .line 827
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_8

    .line 830
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    .local v13, i:I
    :goto_3
    if-lt v13, v15, :cond_7

    .line 831
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 830
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 834
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 836
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 840
    .end local v13           #i:I
    :cond_8
    if-eqz p3, :cond_9

    .line 841
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_5

    .line 846
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too many update ops per contact of guid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 856
    .end local v15           #index:I
    .end local v17           #luid:Ljava/lang/String;
    .local v14, i$:I
    :cond_a
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 857
    .restart local v15       #index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 858
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_d

    .line 888
    :cond_b
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_c

    .line 889
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 897
    .end local v14           #i$:I
    .end local v15           #index:I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 899
    return-void

    .line 862
    .restart local v14       #i$:I
    .restart local v15       #index:I
    :cond_d
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_f

    .line 865
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    .restart local v13       #i:I
    :goto_4
    if-lt v13, v15, :cond_e

    .line 866
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 865
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 869
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 871
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/miui/milk/source/contact2/ContactManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 877
    .end local v13           #i:I
    :cond_f
    if-eqz p3, :cond_10

    .line 878
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_10
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_b

    .line 883
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too many add ops per contact of guid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 21
    .parameter "group"
    .parameter "account"
    .parameter "needTrack"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            "Landroid/accounts/Account;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 679
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p5, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p6, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 680
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare import group to account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 684
    :try_start_0
    const-string v4, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare Import Group guid/title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v13

    .line 686
    .local v13, guid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v4, v13}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 689
    .local v19, luids:[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v18, luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v10, v19

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v17, v10, v14

    .line 691
    .local v17, luid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v6, v0}, Lcom/miui/milk/source/contact2/GroupManager;->exists(JLandroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 692
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 693
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/milk/source/contact2/GroupManager;->exists(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->removeItemKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 743
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v13           #guid:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v17           #luid:Ljava/lang/String;
    .end local v18           #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #luids:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 744
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "AddressBookCloudController"

    const-string v5, "Cannot prepare import group "

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    throw v4

    .line 700
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v13       #guid:Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    .restart local v18       #luidInAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #luids:[Ljava/lang/String;
    :cond_3
    if-eqz v18, :cond_7

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 701
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 702
    .restart local v17       #luid:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 703
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/miui/milk/source/contact2/GroupManager;->prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 704
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_6

    .line 714
    :cond_5
    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2

    .line 708
    :cond_6
    if-eqz p3, :cond_5

    .line 709
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 719
    .end local v15           #index:I
    .end local v17           #luid:Ljava/lang/String;
    .local v14, i$:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v20

    .line 720
    .local v20, title:Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/miui/milk/source/contact2/GroupManager;->loadByTitle(Ljava/lang/String;Landroid/accounts/Account;)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v12

    .line 722
    .local v12, existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    if-nez v12, :cond_9

    .line 723
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 724
    .restart local v15       #index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/miui/milk/source/contact2/GroupManager;->prepareAdd(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 725
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v15, v4, :cond_a

    .line 736
    :cond_8
    :goto_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_9

    .line 737
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 747
    .end local v12           #existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v14           #i$:I
    .end local v15           #index:I
    .end local v20           #title:Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 749
    return-void

    .line 730
    .restart local v12       #existGroup:Lcom/miui/milk/model/ContactProtos2$Group;
    .restart local v14       #i$:I
    .restart local v15       #index:I
    .restart local v20       #title:Ljava/lang/String;
    :cond_a
    if-eqz p3, :cond_8

    .line 731
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4
.end method

.method private processAfterSave(Lcom/miui/milk/model/ContactProtos2$AddressBook;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 9
    .parameter "addressBook"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 956
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 958
    .local v2, group:Lcom/miui/milk/model/ContactProtos2$Group;
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v5

    .line 959
    .local v5, luid:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, guid:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 962
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, group without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, group without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 974
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AddressBookCloudController"

    const-string v7, "Cannot process after save group "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 976
    throw v1

    .line 965
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #guid:Ljava/lang/String;
    .restart local v5       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 966
    :cond_1
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, group without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, group without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 969
    :cond_2
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v3}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 970
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save group guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 980
    .end local v2           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 982
    .local v0, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :try_start_2
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuid()Ljava/lang/String;

    move-result-object v5

    .line 983
    .restart local v5       #luid:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v3

    .line 984
    .restart local v3       #guid:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 985
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, contact without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, contact without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 996
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 997
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "AddressBookCloudController"

    const-string v7, "Cannot process after save contact "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 999
    throw v1

    .line 988
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #guid:Ljava/lang/String;
    .restart local v5       #luid:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 989
    :cond_5
    const-string v6, "AddressBookCloudController"

    const-string v7, "someting error from server, contact without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, contact without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 992
    :cond_6
    iget-object v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 993
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save contact guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1004
    .end local v0           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v3           #guid:Ljava/lang/String;
    .end local v5           #luid:Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 1005
    return-void
.end method

.method private saveAddressBookPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 25
    .parameter "callback"
    .parameter "start"
    .parameter "totalCount"
    .parameter "sharedPref"
    .parameter "batchCount"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 263
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v3

    .line 264
    .local v3, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 265
    const/4 v6, 0x0

    .line 267
    .local v6, contactCount:I
    if-nez p2, :cond_1

    .line 268
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 269
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_3

    .line 278
    move/from16 v0, p2

    if-lt v11, v0, :cond_2

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 281
    .local v7, contactId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v21, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v5

    .line 282
    .local v5, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v4

    .line 284
    .local v4, cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v5

    .line 285
    invoke-virtual {v3, v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 286
    add-int/lit8 v6, v6, 0x1

    .line 287
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v6

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    .line 292
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 296
    .end local v4           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v5           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :catch_0
    move-exception v8

    .line 297
    .local v8, e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot load contact "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v7           #contactId:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 303
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 304
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    .line 306
    move/from16 v0, p2

    if-lt v11, v0, :cond_5

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v12, v11, v21

    .line 308
    .local v12, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 310
    .restart local v7       #contactId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v21, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v5

    .line 311
    .restart local v5       #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v5, :cond_5

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, guid:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v4

    .line 314
    .restart local v4       #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    if-eqz v10, :cond_4

    .line 315
    invoke-virtual {v4, v10}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 317
    :cond_4
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v5

    .line 318
    invoke-virtual {v3, v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 319
    add-int/lit8 v6, v6, 0x1

    .line 320
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v6

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    .line 325
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 329
    .end local v4           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v5           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v10           #guid:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 330
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot load contact "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v7           #contactId:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #index:I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 337
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v11, v21, v22

    .line 338
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v11, v0, :cond_9

    .line 341
    move/from16 v0, p2

    if-lt v11, v0, :cond_8

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_8

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v21, v11, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v12, v21, v22

    .line 343
    .restart local v12       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 345
    .restart local v7       #contactId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    move-object/from16 v21, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/contact2/ContactManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v5

    .line 346
    .restart local v5       #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    if-eqz v5, :cond_8

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 348
    .restart local v10       #guid:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v4

    .line 349
    .restart local v4       #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    if-eqz v10, :cond_7

    .line 350
    invoke-virtual {v4, v10}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 352
    :cond_7
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v5

    .line 353
    invoke-virtual {v3, v5}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 354
    add-int/lit8 v6, v6, 0x1

    .line 355
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v6

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_8

    .line 360
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 364
    .end local v4           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v5           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v10           #guid:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 365
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot load contact "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v7           #contactId:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #index:I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 370
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 372
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deviceId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMSI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->getContactList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_a

    .line 375
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Contact Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    :cond_a
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v18

    .line 379
    .local v18, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 382
    if-eqz v18, :cond_0

    .line 383
    const/4 v15, 0x0

    .line 385
    .local v15, response:Lorg/apache/http/HttpResponse;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v13

    .line 387
    .local v13, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v6

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_b

    .line 391
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 428
    .end local v13           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v8

    .line 429
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot send contact "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 431
    throw v8

    .line 395
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v13       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 396
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Contact Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 399
    if-eqz v15, :cond_e

    .line 400
    const-string v21, "M_WATERMARK"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v20

    .line 401
    .local v20, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v19, 0x0

    .line 402
    .local v19, waterMark:Ljava/lang/String;
    if-eqz v20, :cond_c

    .line 403
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 406
    :cond_c
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 407
    .local v9, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v17

    .line 408
    .local v17, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v14

    .line 409
    .local v14, respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v14, :cond_d

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->processAfterSave(Lcom/miui/milk/model/ContactProtos2$AddressBook;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 413
    :cond_d
    if-eqz v19, :cond_e

    .line 414
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 415
    .local v16, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "watermark_contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "get waterMark : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v16           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v19           #waterMark:Ljava/lang/String;
    .end local v20           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_e
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v6

    add-int/lit8 v23, v23, 0xa

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 425
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0
.end method

.method private saveGroupBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    .locals 24
    .parameter "callback"
    .parameter "totalCount"
    .parameter "sharedPref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 131
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v3

    .line 132
    .local v3, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->openStore()V

    .line 133
    const/4 v8, 0x0

    .line 136
    .local v8, groupCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 138
    .local v9, groupId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v7

    .line 139
    .local v7, group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v7, :cond_0

    .line 140
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Group;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v6

    .line 141
    .local v6, gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    sget-object v20, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v7

    .line 142
    invoke-virtual {v3, v7}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 143
    add-int/lit8 v8, v8, 0x1

    .line 144
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_0

    .line 145
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v6           #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .end local v7           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v9           #groupId:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 149
    .restart local v9       #groupId:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 150
    .local v4, e:Ljava/lang/Exception;
    const-string v20, "AddressBookCloudController"

    const-string v21, "Cannot load group "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #groupId:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 156
    .restart local v9       #groupId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v7

    .line 157
    .restart local v7       #group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v7, :cond_3

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, guid:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Group;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v6

    .line 160
    .restart local v6       #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    if-eqz v10, :cond_4

    .line 161
    invoke-virtual {v6, v10}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 163
    :cond_4
    sget-object v20, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v7

    .line 164
    invoke-virtual {v3, v7}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 165
    add-int/lit8 v8, v8, 0x1

    .line 166
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_3

    .line 167
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 171
    .end local v6           #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .end local v7           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v10           #guid:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 172
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v20, "AddressBookCloudController"

    const-string v21, "Cannot load group "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 176
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #groupId:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 178
    .restart local v9       #groupId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v7

    .line 179
    .restart local v7       #group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v7, :cond_6

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 181
    .restart local v10       #guid:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Group;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v6

    .line 182
    .restart local v6       #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    if-eqz v10, :cond_7

    .line 183
    invoke-virtual {v6, v10}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 185
    :cond_7
    sget-object v20, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v7

    .line 186
    invoke-virtual {v3, v7}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 187
    add-int/lit8 v8, v8, 0x1

    .line 188
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_6

    .line 189
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 193
    .end local v6           #gb:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .end local v7           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v10           #guid:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 194
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v20, "AddressBookCloudController"

    const-string v21, "Cannot load group "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 198
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #groupId:Ljava/lang/String;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->closeStore()V

    .line 200
    const-string v20, "AddressBookCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deviceId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v20, "AddressBookCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IMSI : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->getGroupList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_9

    .line 203
    const-string v20, "AddressBookCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Export Group Counts : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 206
    :cond_9
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v17

    .line 207
    .local v17, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 210
    if-eqz v17, :cond_1

    .line 211
    const/4 v14, 0x0

    .line 213
    .local v14, response:Lorg/apache/http/HttpResponse;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v12

    .line 215
    .local v12, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_a

    .line 216
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 250
    .end local v12           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v4

    .line 251
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v20, "AddressBookCloudController"

    const-string v21, "Cannot send contact "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 253
    throw v4

    .line 220
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v12       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 221
    const-string v20, "AddressBookCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Export Group Counts : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 224
    if-eqz v14, :cond_d

    .line 225
    const-string v20, "M_WATERMARK"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 226
    .local v19, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v18, 0x0

    .line 227
    .local v18, waterMark:Ljava/lang/String;
    if-eqz v19, :cond_b

    .line 228
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 231
    :cond_b
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 232
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v16

    .line 233
    .local v16, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v13

    .line 234
    .local v13, respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v13, :cond_c

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->processAfterSave(Lcom/miui/milk/model/ContactProtos2$AddressBook;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 238
    :cond_c
    if-eqz v18, :cond_d

    .line 239
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 240
    .local v15, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "watermark_contacts"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    const-string v20, "AddressBookCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get waterMark : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #respAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v15           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v18           #waterMark:Ljava/lang/String;
    .end local v19           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_d
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_1

    .line 247
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkEmpty()V

    .line 55
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->prepareChangeItems()V

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    iget-object v1, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public clearPrepared()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->clearPrepared()V

    .line 1034
    iget-object v0, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->clearPrepared()V

    .line 1035
    return-void
.end method

.method public getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 24
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 548
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->isPrepared()Z

    move-result v21

    if-nez v21, :cond_0

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->prepareChangeItems()V

    .line 557
    :cond_0
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deviceId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v21, "AddressBookCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMSI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v18, 0x0

    .line 561
    .local v18, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v13

    .line 563
    .local v13, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v19

    .line 565
    .local v19, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v15

    .line 568
    .local v15, reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_1

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 570
    .local v12, luid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 571
    .local v9, guid:Ljava/lang/String;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v4

    .line 572
    .local v4, contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-virtual {v4, v9}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 573
    invoke-virtual {v15, v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 568
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 549
    .end local v4           #contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v9           #guid:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #luid:Ljava/lang/String;
    .end local v13           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    :catch_0
    move-exception v6

    .line 550
    .local v6, e1:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 630
    .end local v6           #e1:Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 575
    .restart local v10       #i:I
    .restart local v13       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15       #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    :cond_1
    invoke-virtual {v15}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v14

    .line 576
    .local v14, reqAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 577
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v16

    .line 580
    .local v16, reqSyc:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v17

    .line 582
    .local v17, resAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-virtual {v14}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_4

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v13}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 586
    if-eqz v18, :cond_3

    .line 587
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 588
    .local v7, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v20

    .line 590
    .local v20, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v3

    .line 591
    .local v3, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v3, :cond_3

    .line 592
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 593
    .local v4, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 626
    .end local v3           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v4           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #reqAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v15           #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .end local v16           #reqSyc:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v17           #resAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .end local v19           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v20           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v5

    .line 627
    .local v5, e:Ljava/lang/Exception;
    const-string v21, "AddressBookCloudController"

    const-string v22, "Cannot read contact "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 630
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 598
    .restart local v10       #i:I
    .restart local v13       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #reqAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v15       #reqAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .restart local v16       #reqSyc:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v17       #resAddressBookBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .restart local v19       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    :cond_3
    const/16 v18, 0x0

    .line 602
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncFindlostUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v13}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 604
    if-eqz v18, :cond_6

    .line 605
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 606
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v20

    .line 608
    .restart local v20       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v3

    .line 609
    .restart local v3       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v3, :cond_6

    .line 610
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 611
    .local v8, group:Lcom/miui/milk/model/ContactProtos2$Group;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    goto :goto_3

    .line 613
    .end local v8           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    :cond_5
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 614
    .restart local v4       #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    goto :goto_4

    .line 621
    .end local v3           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v4           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v20           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 622
    .restart local v3       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v3, :cond_2

    goto/16 :goto_1
.end method

.method public importFindlostContacts(Lcom/miui/milk/control/callback/AsyncTaskCallback;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/control/callback/AsyncTaskCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/ContactProtos2$Contact;>;"
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 635
    if-nez p2, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const/4 v5, 0x0

    .line 638
    .local v5, totalCount:I
    const/4 v2, 0x0

    .line 639
    .local v2, contactCount:I
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 641
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 642
    .local v1, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Contact;->toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    .line 643
    .local v0, cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 644
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v1

    .line 646
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v1, v6, v7}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->importToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Z)V

    .line 647
    add-int/lit8 v2, v2, 0x1

    .line 648
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    mul-int/lit8 v8, v2, 0x64

    div-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "100"

    aput-object v8, v6, v7

    invoke-interface {p1, v6}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 652
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    .end local v0           #cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v1           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 671
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "AddressBookCloudController"

    const-string v7, "Cannot import contact "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "EXCEPTION"

    aput-object v7, v6, v11

    const-string v7, "10000"

    aput-object v7, v6, v10

    invoke-interface {p1, v6}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto/16 :goto_0

    .line 657
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    const-string v6, "AddressBookCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Import Contact Counts : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "100"

    aput-object v8, v6, v7

    invoke-interface {p1, v6}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 661
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    goto/16 :goto_0

    .line 664
    :cond_4
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {p1, v6}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 667
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 33
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 439
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    .line 441
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkEmpty()V

    .line 448
    const-string v3, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v3, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mIMSI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/16 v25, 0x0

    .line 452
    .local v25, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v24

    .line 454
    .local v24, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactManager;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    const-string v3, "restore_watermark_contacts"

    const-string v5, ""

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 456
    .local v30, waterMark:Ljava/lang/String;
    if-eqz v30, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 457
    const-string v3, "M_WATERMARK_ORIGINAL"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v3, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send waterMark : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v30           #waterMark:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v27

    .line 462
    .local v27, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v3, v5, v6, v0}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 466
    if-eqz v25, :cond_4

    .line 468
    const-string v3, "M_WATERMARK"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v31

    .line 469
    .local v31, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v32, 0x0

    .line 470
    .local v32, waterMarkNew:Ljava/lang/String;
    if-eqz v31, :cond_1

    .line 471
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v32

    .line 474
    :cond_1
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    .line 475
    .local v21, entity:Lorg/apache/http/HttpEntity;
    invoke-static/range {v21 .. v21}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v28

    .line 477
    .local v28, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v28 .. v28}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v17

    .line 478
    .local v17, addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    if-eqz v17, :cond_b

    .line 480
    const/16 v29, 0x0

    .line 481
    .local v29, totalCount:I
    const/16 v22, 0x0

    .line 482
    .local v22, groupCount:I
    const/16 v18, 0x0

    .line 484
    .local v18, contactCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v7, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 486
    .local v8, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v9, trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/ContactProtos2$Group;

    .line 489
    .local v4, group:Lcom/miui/milk/model/ContactProtos2$Group;
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 490
    add-int/lit8 v22, v22, 0x1

    .line 492
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-eq v0, v3, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_2

    .line 493
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->groupApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 539
    .end local v4           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v9           #trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .end local v18           #contactCount:I
    .end local v21           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #groupCount:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v28           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v29           #totalCount:I
    .end local v31           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v32           #waterMarkNew:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 540
    .local v19, e:Ljava/lang/Exception;
    const-string v3, "AddressBookCloudController"

    const-string v5, "Cannot read contact "

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 544
    .end local v19           #e:Ljava/lang/Exception;
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_1
    return-void

    .line 442
    :catch_1
    move-exception v20

    .line 443
    .local v20, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 497
    .end local v20           #e1:Ljava/lang/Exception;
    .restart local v7       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v8       #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v9       #trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17       #addressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .restart local v18       #contactCount:I
    .restart local v21       #entity:Lorg/apache/http/HttpEntity;
    .restart local v22       #groupCount:I
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v24       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25       #response:Lorg/apache/http/HttpResponse;
    .restart local v27       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v28       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v29       #totalCount:I
    .restart local v31       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v32       #waterMarkNew:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 498
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 499
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 500
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v29

    .line 502
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_6
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 503
    .local v11, contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v10, p0

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->prepareImportToAccount(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 504
    add-int/lit8 v18, v18, 0x1

    .line 505
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    mul-int/lit8 v6, v18, 0x64

    div-int v6, v6, v29

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "100"

    aput-object v6, v3, v5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 509
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    goto :goto_1

    .line 513
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-eq v0, v3, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_6

    .line 514
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->contactApplyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2

    .line 519
    .end local v11           #contact:Lcom/miui/milk/model/ContactProtos2$Contact;
    :cond_9
    const-string v3, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Import Group Counts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v3, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Import Contact Counts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "100"

    aput-object v6, v3, v5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 522
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 525
    :cond_a
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "SUCCESS"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 526
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 531
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v9           #trackUpdateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #contactCount:I
    .end local v22           #groupCount:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v29           #totalCount:I
    :cond_b
    if-eqz v32, :cond_4

    .line 532
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    .line 533
    .local v26, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "restore_watermark_contacts"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    const-string v3, "AddressBookCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new waterMark : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 17
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 67
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->checkEmpty()V

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->isPrepared()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->prepareChangeItems()V

    .line 73
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->isPrepared()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->prepareChangeItems()V

    .line 76
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, c_new:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, c_update:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, c_delete:Ljava/lang/String;
    const/4 v6, 0x0

    .line 82
    .local v6, totalCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v6, v3

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v6, v3

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v6, v3

    .line 86
    div-int/lit16 v10, v6, 0xfa

    .line 87
    .local v10, batches:I
    mul-int/lit16 v3, v10, 0xfa

    if-le v6, v3, :cond_2

    .line 88
    add-int/lit8 v10, v10, 0x1

    .line 91
    :cond_2
    mul-int/lit8 v3, v10, 0xa

    add-int v9, v6, v3

    .line 92
    .local v9, totalTime:I
    const/4 v8, 0x0

    .line 94
    .local v8, batchCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    if-eqz v3, :cond_4

    .line 125
    :cond_3
    :goto_0
    return-void

    .line 95
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->saveGroupBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactManager:Lcom/miui/milk/source/contact2/ContactManager;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareGroup()V

    .line 102
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_5

    .line 104
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    if-nez v3, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 105
    invoke-direct/range {v3 .. v9}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->saveAddressBookPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    add-int/lit16 v5, v5, 0xfa

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 96
    .end local v5           #i:I
    :catch_0
    move-exception v15

    .line 97
    .local v15, e1:Ljava/lang/Exception;
    const-string v3, "AddressBookCloudController"

    const-string v4, "Cannot save group batch "

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v15           #e1:Ljava/lang/Exception;
    .restart local v5       #i:I
    :catch_1
    move-exception v14

    .line 107
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "AddressBookCloudController"

    const-string v4, "Cannot save addressbook batch "

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v14           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    if-nez v3, :cond_3

    .line 113
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x2

    const-string v7, "100"

    aput-object v7, v3, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 114
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    goto :goto_0

    .line 117
    :cond_6
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "SUCCESS"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    const/4 v4, 0x2

    aput-object v13, v3, v4

    const/4 v4, 0x3

    aput-object v11, v3, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 118
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mCanceled:Z

    goto/16 :goto_0

    .line 123
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mGroupVersionTracker:Lcom/miui/milk/source/contact2/GroupVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/GroupVersionTracker;->removeDeletedItemKeys()V

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/AddressBookCloudController;->mContactVersionTracker:Lcom/miui/milk/source/contact2/ContactVersionTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/contact2/ContactVersionTracker;->removeDeletedItemKeys()V

    goto/16 :goto_0
.end method
