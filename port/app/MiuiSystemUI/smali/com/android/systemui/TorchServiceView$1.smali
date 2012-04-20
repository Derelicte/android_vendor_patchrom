.class Lcom/android/systemui/TorchServiceView$1;
.super Ljava/lang/Object;
.source "TorchServiceView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 167
    iput-object p1, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/TorchServiceView;->setFlashMode(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/TorchServiceView;->access$000(Lcom/android/systemui/TorchServiceView;I)V

    .line 171
    return-void
.end method
