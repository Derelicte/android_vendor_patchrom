.class Lcom/android/mms/ui/ConversationFragment$2;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$2;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$2;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/Recycler;->checkForThreadsOverLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$2;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$300(Lcom/android/mms/ui/ConversationFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationFragment$2$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationFragment$2$1;-><init>(Lcom/android/mms/ui/ConversationFragment$2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$2;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationFragment$2$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationFragment$2$3;-><init>(Lcom/android/mms/ui/ConversationFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$2;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationFragment$2$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationFragment$2$2;-><init>(Lcom/android/mms/ui/ConversationFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
