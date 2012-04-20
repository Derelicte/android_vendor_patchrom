.class Lcom/android/mms/ui/NewMessageActivity$13$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$13;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$13;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$13;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$13$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$13$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$13;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$13;->val$c:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 670
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$13$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$13;

    iget-object v1, v1, Lcom/android/mms/ui/NewMessageActivity$13;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NewMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 672
    return-void
.end method
