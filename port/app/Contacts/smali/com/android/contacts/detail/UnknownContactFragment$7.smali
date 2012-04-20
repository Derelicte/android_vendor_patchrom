.class Lcom/android/contacts/detail/UnknownContactFragment$7;
.super Ljava/lang/Object;
.source "UnknownContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/UnknownContactFragment;->getCreateView()Landroid/view/View;
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
    .line 637
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$7;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 641
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$7;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1700(Lcom/android/contacts/detail/UnknownContactFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 642
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$7;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->access$300(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$7;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$7;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/UnknownContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 647
    return-void

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$7;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1700(Lcom/android/contacts/detail/UnknownContactFragment;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 644
    const-string v1, "email"

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$7;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1600(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
