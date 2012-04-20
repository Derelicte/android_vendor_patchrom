.class Lcom/android/deskclock/AlarmAlertFullScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget-object v2, v2, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v2, :cond_0

    .line 103
    const-string v2, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V
    invoke-static {v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    .line 127
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget-object v2, v2, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v2, :cond_2

    const-string v2, "alarm_killed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #getter for: Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$200(Lcom/android/deskclock/AlarmAlertFullScreen;)I

    move-result v2

    if-lez v2, :cond_2

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismissTimer()V
    invoke-static {v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$300(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    .line 132
    :cond_2
    return-void

    .line 105
    :cond_3
    const-string v2, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V
    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V

    goto :goto_0

    .line 107
    :cond_4
    const-string v2, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #getter for: Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$200(Lcom/android/deskclock/AlarmAlertFullScreen;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V
    invoke-static {v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V
    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V

    goto :goto_0

    .line 121
    :cond_5
    const-string v2, "intent.extra.alarm"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/Alarm;

    .line 122
    .local v1, alarm:Lcom/android/deskclock/Alarm;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget-object v2, v2, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    iget v3, v1, Lcom/android/deskclock/Alarm;->id:I

    if-ne v2, v3, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    const/4 v3, 0x1

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V
    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
