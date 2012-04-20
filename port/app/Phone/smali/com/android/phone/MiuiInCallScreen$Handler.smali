.class Lcom/android/phone/MiuiInCallScreen$Handler;
.super Landroid/os/Handler;
.source "MiuiInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private mParentHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/MiuiInCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiInCallScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "parentHandler"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/MiuiInCallScreen$Handler;->this$0:Lcom/android/phone/MiuiInCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/android/phone/MiuiInCallScreen$Handler;->mParentHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen$Handler;->this$0:Lcom/android/phone/MiuiInCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/MiuiInCallScreen;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen$Handler;->this$0:Lcom/android/phone/MiuiInCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/MiuiInCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 68
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen$Handler;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen$Handler;->this$0:Lcom/android/phone/MiuiInCallScreen;

    #calls: Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V
    invoke-static {v0}, Lcom/android/phone/MiuiInCallScreen;->access$000(Lcom/android/phone/MiuiInCallScreen;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method
