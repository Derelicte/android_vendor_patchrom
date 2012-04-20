.class Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/AccountFilterView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p3, filters:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 319
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 321
    iput-object p3, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->mFilters:Ljava/util/List;

    .line 322
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .parameter "position"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->getItem(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 331
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 341
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 342
    check-cast v1, Lcom/android/contacts/list/ContactListFilterView;

    .line 347
    .local v1, view:Lcom/android/contacts/list/ContactListFilterView;
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->setSingleAccount(Z)V

    .line 348
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 349
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 350
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->this$0:Lcom/android/contacts/list/AccountFilterView;

    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v4}, Lcom/android/contacts/list/AccountFilterView;->access$700(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v4

    #calls: Lcom/android/contacts/list/AccountFilterView;->localCompareFilters(Lcom/android/contacts/list/ContactListFilter;Lcom/android/contacts/list/ContactListFilter;)Z
    invoke-static {v2, v0, v4}, Lcom/android/contacts/list/AccountFilterView;->access$800(Lcom/android/contacts/list/AccountFilterView;Lcom/android/contacts/list/ContactListFilter;Lcom/android/contacts/list/ContactListFilter;)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/list/ContactListFilterView;->bindView(ZZ)V

    .line 351
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterView;->setTag(Ljava/lang/Object;)V

    .line 352
    return-object v1

    .line 344
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    .end local v1           #view:Lcom/android/contacts/list/ContactListFilterView;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04002f

    invoke-virtual {v4, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterView;

    .restart local v1       #view:Lcom/android/contacts/list/ContactListFilterView;
    goto :goto_0
.end method
