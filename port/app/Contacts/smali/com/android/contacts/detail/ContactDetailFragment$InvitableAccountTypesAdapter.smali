.class final Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitableAccountTypesAdapter"
.end annotation


# instance fields
.field private final mAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 6
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 2209
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2210
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    .line 2211
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2212
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 2213
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getInvitableAccountTypes()Ljava/util/ArrayList;

    move-result-object v2

    .line 2214
    .local v2, types:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    .line 2216
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 2217
    .local v1, manager:Lcom/android/contacts/model/AccountTypeManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2218
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2221
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/model/AccountType$DisplayLabelComparator;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/contacts/model/AccountType$DisplayLabelComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2222
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/model/AccountType;
    .locals 1
    .parameter "position"

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2203
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->getItem(I)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2263
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 2226
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 2230
    .local v4, resultView:Landroid/view/View;
    :goto_0
    const v7, 0x1020014

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2231
    .local v5, text1:Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2232
    .local v6, text2:Landroid/widget/TextView;
    const v7, 0x1020006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2234
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 2236
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/AccountType;->getInviteContactActionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2237
    .local v1, action:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2238
    .local v3, label:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2239
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2240
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2246
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2248
    return-object v4

    .line 2226
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v1           #action:Ljava/lang/CharSequence;
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v4           #resultView:Landroid/view/View;
    .end local v5           #text1:Landroid/widget/TextView;
    .end local v6           #text2:Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040001

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 2242
    .restart local v0       #accountType:Lcom/android/contacts/model/AccountType;
    .restart local v1       #action:Ljava/lang/CharSequence;
    .restart local v2       #icon:Landroid/widget/ImageView;
    .restart local v3       #label:Ljava/lang/CharSequence;
    .restart local v4       #resultView:Landroid/view/View;
    .restart local v5       #text1:Landroid/widget/TextView;
    .restart local v6       #text2:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2243
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2244
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
