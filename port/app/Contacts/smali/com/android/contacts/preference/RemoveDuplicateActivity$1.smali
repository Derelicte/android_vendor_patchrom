.class Lcom/android/contacts/preference/RemoveDuplicateActivity$1;
.super Ljava/lang/Object;
.source "RemoveDuplicateActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity;
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
        "Lcom/android/contacts/preference/ScanContactsLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    const v2, 0x7f0b022b

    invoke-virtual {v1, v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, title:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$000(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->mDialog:Landroid/app/ProgressDialog;

    .line 132
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 133
    new-instance v1, Lcom/android/contacts/preference/ScanContactsLoader;

    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$000(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/preference/ScanContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 129
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    const v2, 0x7f0b022c

    invoke-virtual {v1, v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/preference/ScanContactsLoader$Result;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$Result;",
            ">;",
            "Lcom/android/contacts/preference/ScanContactsLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/preference/ScanContactsLoader$Result;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 141
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #setter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0, p2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$102(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/ScanContactsLoader$Result;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    .line 147
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-virtual {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 151
    :cond_1
    const-string v0, "REMOVE_DUPLICATE_CONTACTS"

    const-string v1, "no raw_contact to be deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #calls: Lcom/android/contacts/preference/RemoveDuplicateActivity;->startScanMerge()V
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$200(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    .line 171
    :cond_2
    :goto_0
    return-void

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    new-instance v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;

    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateActivity$1;)V

    #setter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$302(Lcom/android/contacts/preference/RemoveDuplicateActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 155
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$500(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$300(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-virtual {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    const v2, 0x7f0b022d

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v4}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-virtual {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 163
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 164
    const-string v0, "REMOVE_DUPLICATE_CONTACTS"

    const-string v1, "no raw_contact to be merge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    #calls: Lcom/android/contacts/preference/RemoveDuplicateActivity;->updateTitle(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$700(Lcom/android/contacts/preference/RemoveDuplicateActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    new-instance v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;

    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateActivity$1;)V

    #setter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$302(Lcom/android/contacts/preference/RemoveDuplicateActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 167
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$500(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$300(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    check-cast p2, Lcom/android/contacts/preference/ScanContactsLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/preference/ScanContactsLoader$Result;)V

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
            "Lcom/android/contacts/preference/ScanContactsLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/preference/ScanContactsLoader$Result;>;"
    return-void
.end method
