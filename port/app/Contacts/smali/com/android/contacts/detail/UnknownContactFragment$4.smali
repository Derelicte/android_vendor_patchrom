.class Lcom/android/contacts/detail/UnknownContactFragment$4;
.super Ljava/lang/Object;
.source "UnknownContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/UnknownContactFragment;->getItemView()Landroid/view/View;
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
    .line 589
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$4;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$4;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$300(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 594
    .local v0, smsIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$4;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/UnknownContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 595
    return-void
.end method
