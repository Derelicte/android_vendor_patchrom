.class Lcom/android/contacts/preference/RemoveDuplicateActivity$3;
.super Ljava/lang/Object;
.source "RemoveDuplicateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity;->onFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

.field final synthetic val$reload:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    iput-boolean p2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;->val$reload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;->val$reload:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #calls: Lcom/android/contacts/preference/RemoveDuplicateActivity;->startScanMerge()V
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$200(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$300(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 502
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    #calls: Lcom/android/contacts/preference/RemoveDuplicateActivity;->updateTitle(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$700(Lcom/android/contacts/preference/RemoveDuplicateActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
