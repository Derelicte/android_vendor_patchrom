.class Lcom/android/monitor/UidDetailActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "UidDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/UidDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/UidDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity$6;->this$0:Lcom/android/monitor/UidDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$6;->this$0:Lcom/android/monitor/UidDetailActivity;

    #getter for: Lcom/android/monitor/UidDetailActivity;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/monitor/UidDetailActivity;->access$600(Lcom/android/monitor/UidDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/monitor/UidDetailActivity$6;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
