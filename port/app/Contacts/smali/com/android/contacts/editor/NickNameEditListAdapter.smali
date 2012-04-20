.class public Lcom/android/contacts/editor/NickNameEditListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NickNameEditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/NickNameDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/NickNameEditListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/editor/NickNameDataItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/NickNameDataItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getItem(I)Lcom/android/contacts/editor/NickNameDataItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNickNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getCount()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 70
    .local v1, nickNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/NickNameDataItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/NickNameDataItem;->getNickname()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-object v1
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getCount()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 78
    .local v1, numbers:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/NickNameDataItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/NickNameDataItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 125
    move-object v1, p2

    check-cast v1, Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;

    .line 126
    .local v1, view:Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;
    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;

    .end local v1           #view:Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;
    iget-object v2, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;-><init>(Lcom/android/contacts/editor/NickNameEditListAdapter;Landroid/content/Context;)V

    .line 130
    .restart local v1       #view:Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getItem(I)Lcom/android/contacts/editor/NickNameDataItem;

    move-result-object v0

    .line 131
    .local v0, item:Lcom/android/contacts/editor/NickNameDataItem;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/android/contacts/editor/NickNameDataItem;->load()V

    .line 133
    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;->setIndex(I)V

    .line 134
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/NickNameEditListAdapter$NickNameEditListItem;->bind(Lcom/android/contacts/editor/NickNameDataItem;)V

    .line 137
    :cond_1
    return-object v1
.end method

.method public parseFromPickIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 43
    const-string v2, "numbers"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, numbers:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/editor/NickNameDataItem;

    iget-object v4, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    aget-object v5, v1, v0

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/NickNameDataItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/NickNameEditListAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public saveNickName()I
    .locals 7

    .prologue
    .line 97
    const/4 v4, 0x1

    .line 99
    .local v4, result:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/NickNameDataItem;

    .line 101
    .local v2, item:Lcom/android/contacts/editor/NickNameDataItem;
    invoke-virtual {v2}, Lcom/android/contacts/editor/NickNameDataItem;->save()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 104
    .end local v2           #item:Lcom/android/contacts/editor/NickNameDataItem;
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/ExtraContacts$Nickname;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 107
    const/4 v4, 0x2

    .line 108
    iget-object v5, p0, Lcom/android/contacts/editor/NickNameEditListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/NickNameDataItem;

    .line 109
    .restart local v2       #item:Lcom/android/contacts/editor/NickNameDataItem;
    invoke-virtual {v2}, Lcom/android/contacts/editor/NickNameDataItem;->getEditingNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/NickNameDataItem;->setNickname(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 112
    .end local v2           #item:Lcom/android/contacts/editor/NickNameDataItem;
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    const/4 v4, 0x3

    .line 114
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return v4

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, e:Landroid/content/OperationApplicationException;
    const/4 v4, 0x3

    .line 117
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2
.end method
