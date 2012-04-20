.class Lcom/android/mms/ui/ConversationFragment$2$1;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationFragment$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$2$1;->this$1:Lcom/android/mms/ui/ConversationFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$2$1;->this$1:Lcom/android/mms/ui/ConversationFragment$2;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationFragment$2;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$2$1;->this$1:Lcom/android/mms/ui/ConversationFragment$2;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationFragment$2;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method
