.class Lcom/android/systemui/TorchServiceView$2;
.super Landroid/content/BroadcastReceiver;
.source "TorchServiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TorchServiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TorchServiceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/TorchServiceView;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/TorchServiceView$2;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, mode:I
    const-string v3, "miui.intent.extra.IS_TOGGLE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/android/systemui/TorchServiceView$2;->this$0:Lcom/android/systemui/TorchServiceView;

    #getter for: Lcom/android/systemui/TorchServiceView;->mFlashMode:I
    invoke-static {v3}, Lcom/android/systemui/TorchServiceView;->access$100(Lcom/android/systemui/TorchServiceView;)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView$2;->this$0:Lcom/android/systemui/TorchServiceView;

    #calls: Lcom/android/systemui/TorchServiceView;->setFlashMode(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/TorchServiceView;->access$000(Lcom/android/systemui/TorchServiceView;I)V

    .line 188
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    .line 182
    :cond_1
    const-string v3, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
