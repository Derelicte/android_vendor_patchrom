.class Lcom/android/contacts/detail/UnknownContactFragment$2;
.super Ljava/lang/Object;
.source "UnknownContactFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/UnknownContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/UnknownContactFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/UnknownContactFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$2;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 306
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$2;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$300(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 307
    .local v1, phoneNumbers:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$2;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/contacts/ContactSaveService;->createDeleteCalllog(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 308
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$2;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 309
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$2;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 310
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$2;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$2;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    const v4, 0x7f0b0204

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    return-void
.end method
