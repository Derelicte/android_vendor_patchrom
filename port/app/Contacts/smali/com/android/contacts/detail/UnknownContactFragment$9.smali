.class Lcom/android/contacts/detail/UnknownContactFragment$9;
.super Ljava/lang/Object;
.source "UnknownContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/UnknownContactFragment;->getAddToBlackListView()Landroid/view/View;
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
    .line 682
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$9;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 685
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$9;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1700(Lcom/android/contacts/detail/UnknownContactFragment;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADD_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v1, "numbers"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$9;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/detail/UnknownContactFragment;->access$300(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$9;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/UnknownContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 691
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
