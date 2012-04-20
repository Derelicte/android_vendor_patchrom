.class Lcom/android/deskclock/AlarmKlaxon$1;
.super Landroid/os/Handler;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmKlaxon;->sendKillBroadcast(Lcom/android/deskclock/Alarm;)V
    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmKlaxon;->access$000(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V

    .line 74
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcom/android/deskclock/AlarmKlaxon;->stopSelf()V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$100(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
