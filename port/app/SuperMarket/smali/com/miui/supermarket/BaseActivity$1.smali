.class Lcom/miui/supermarket/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/supermarket/BaseActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/BaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/supermarket/BaseActivity$1;->this$0:Lcom/miui/supermarket/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/supermarket/BaseActivity$1;->this$0:Lcom/miui/supermarket/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/BaseActivity;->handleMessageImpl(Landroid/os/Message;)V

    .line 67
    return-void
.end method
