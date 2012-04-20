.class public Lcom/android/contacts/detail/RawContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "RawContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/RawContactAdapter$RawContact;
    }
.end annotation


# instance fields
.field private mContactsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/RawContactAdapter$RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/RawContactAdapter$RawContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/RawContactAdapter$RawContact;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContactsList:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContactsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContactsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/detail/RawContactAdapter$RawContact;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContactsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContactsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/RawContactAdapter$RawContact;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/RawContactAdapter;->getItem(I)Lcom/android/contacts/detail/RawContactAdapter$RawContact;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/RawContactAdapter;->getItem(I)Lcom/android/contacts/detail/RawContactAdapter$RawContact;

    move-result-object v0

    .line 63
    .local v0, contact:Lcom/android/contacts/detail/RawContactAdapter$RawContact;
    const v1, 0x7f07004d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/contacts/detail/RawContactAdapter$RawContact;->rawContactName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v1, 0x7f0700cb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0238

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/contacts/detail/RawContactAdapter$RawContact;->accountName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/contacts/detail/RawContactAdapter$RawContact;->accountType:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/android/contacts/ContactsUtils;->getAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f070025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/contacts/detail/RawContactAdapter$RawContact;->accountType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/detail/RawContactAdapter$RawContact;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/RawContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-object p2
.end method
