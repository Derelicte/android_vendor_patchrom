.class Lcom/android/contacts/detail/UnknownContactFragment$1;
.super Ljava/lang/Object;
.source "UnknownContactFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/UnknownContactFragment;->deleteCalllog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/UnknownContactFragment;

.field final synthetic val$adapter:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

.field final synthetic val$calllog:Lcom/android/contacts/CalllogMetaData;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/UnknownContactFragment;Lcom/android/contacts/CalllogMetaData;Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    iput-object p3, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->val$adapter:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v2}, Lcom/android/contacts/CalllogMetaData;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createDeleteCalllog(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 280
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 282
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$200(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/CalllogLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/CalllogLoader$Result;->getCalllog()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    const v3, 0x7f0b0204

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$200(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/CalllogLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/CalllogLoader$Result;->getCalllog()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$1;->val$adapter:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
