.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountLoadFinish(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, filters:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 98
    .local v0, curFilter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilter;

    .line 101
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    const/4 v2, 0x1

    .line 106
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_1
    if-nez v2, :cond_2

    .line 107
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v5, -0x2

    invoke-static {v5}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 112
    .end local v2           #found:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V
    invoke-static {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 113
    return-void
.end method
