.class Lcom/android/deskclock/AlarmInitReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmInitReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmInitReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmInitReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->this$0:Lcom/android/deskclock/AlarmInitReceiver;

    iput-object p2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p5, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 43
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 47
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v1, "timestate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 49
    const-string v2, "endtime"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 50
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "action.timer.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "extra_endtime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 61
    const-string v0, "AlarmInitReceiver finished"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 63
    return-void
.end method
