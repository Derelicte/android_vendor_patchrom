.class Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;
.super Ljava/lang/Object;
.source "ContactDetailCalllogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailCalllogFragment;->deleteCalllog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

.field final synthetic val$calllog:Lcom/android/contacts/CalllogMetaData;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment;Lcom/android/contacts/CalllogMetaData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v2}, Lcom/android/contacts/CalllogMetaData;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createDeleteCalllog(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$100(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getCalllogMetaData()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$200(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->notifyDataSetChanged()V

    .line 268
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    const v3, 0x7f0b0204

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    return-void
.end method
