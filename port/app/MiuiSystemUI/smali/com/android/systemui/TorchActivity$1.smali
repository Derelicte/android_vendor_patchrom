.class Lcom/android/systemui/TorchActivity$1;
.super Landroid/database/ContentObserver;
.source "TorchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TorchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TorchActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/TorchActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/TorchActivity$1;->this$0:Lcom/android/systemui/TorchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/android/systemui/TorchActivity$1;->this$0:Lcom/android/systemui/TorchActivity;

    iget-object v2, p0, Lcom/android/systemui/TorchActivity$1;->this$0:Lcom/android/systemui/TorchActivity;

    invoke-virtual {v2}, Lcom/android/systemui/TorchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    #setter for: Lcom/android/systemui/TorchActivity;->mTorchOn:Z
    invoke-static {v1, v0}, Lcom/android/systemui/TorchActivity;->access$002(Lcom/android/systemui/TorchActivity;Z)Z

    .line 98
    iget-object v0, p0, Lcom/android/systemui/TorchActivity$1;->this$0:Lcom/android/systemui/TorchActivity;

    #calls: Lcom/android/systemui/TorchActivity;->updateTorchState()V
    invoke-static {v0}, Lcom/android/systemui/TorchActivity;->access$100(Lcom/android/systemui/TorchActivity;)V

    .line 99
    return-void
.end method
