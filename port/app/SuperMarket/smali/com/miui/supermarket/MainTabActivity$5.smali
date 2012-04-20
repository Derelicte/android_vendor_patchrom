.class Lcom/miui/supermarket/MainTabActivity$5;
.super Landroid/os/Handler;
.source "MainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/supermarket/MainTabActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity$5;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$5;->this$0:Lcom/miui/supermarket/MainTabActivity;

    #calls: Lcom/miui/supermarket/MainTabActivity;->handleMessageImpl(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/miui/supermarket/MainTabActivity;->access$700(Lcom/miui/supermarket/MainTabActivity;Landroid/os/Message;)V

    .line 503
    return-void
.end method
