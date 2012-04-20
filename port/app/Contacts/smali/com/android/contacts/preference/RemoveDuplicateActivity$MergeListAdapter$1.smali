.class Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;
.super Ljava/lang/Object;
.source "RemoveDuplicateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;

.field final synthetic val$contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

.field final synthetic val$holder:Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->this$1:Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;

    iput-object p2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->val$contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    iput-object p3, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->val$holder:Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->val$contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 378
    .local v0, isChecked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->val$contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->setChecked(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->val$holder:Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;

    iget-object v1, v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->mChecked:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->val$contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->this$1:Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;

    iget-object v1, v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;->this$1:Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;

    iget-object v2, v2, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    #calls: Lcom/android/contacts/preference/RemoveDuplicateActivity;->updateTitle(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$700(Lcom/android/contacts/preference/RemoveDuplicateActivity;Ljava/util/ArrayList;)V

    .line 382
    return-void

    .line 377
    .end local v0           #isChecked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
