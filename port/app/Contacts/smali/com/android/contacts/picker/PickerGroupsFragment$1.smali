.class Lcom/android/contacts/picker/PickerGroupsFragment$1;
.super Ljava/lang/Object;
.source "PickerGroupsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/picker/PickerGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/picker/PickerGroupsFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/picker/PickerGroupsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/android/contacts/GroupListLoader;

    iget-object v1, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    invoke-virtual {v1}, Lcom/android/contacts/picker/PickerGroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/GroupListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    new-instance v1, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    iget-object v2, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    invoke-virtual {v3}, Lcom/android/contacts/picker/PickerGroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;-><init>(Lcom/android/contacts/picker/PickerGroupsFragment;Landroid/database/Cursor;Landroid/content/Context;)V

    #setter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;
    invoke-static {v0, v1}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$002(Lcom/android/contacts/picker/PickerGroupsFragment;Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;)Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    .line 126
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    new-instance v1, Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;

    iget-object v2, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$200(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;
    invoke-static {v3}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$000(Lcom/android/contacts/picker/PickerGroupsFragment;)Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;-><init>(Landroid/content/Context;Landroid/widget/CursorTreeAdapter;)V

    #setter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mQueryHandler:Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;
    invoke-static {v0, v1}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$102(Lcom/android/contacts/picker/PickerGroupsFragment;Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;)Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;

    .line 127
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$300(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;
    invoke-static {v1}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$000(Lcom/android/contacts/picker/PickerGroupsFragment;)Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$300(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/picker/PickerGroupsFragment$1;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mAdapter:Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;
    invoke-static {v1}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$000(Lcom/android/contacts/picker/PickerGroupsFragment;)Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 129
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/picker/PickerGroupsFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
