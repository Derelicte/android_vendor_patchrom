.class Lcom/android/deskclock/AlarmAlertFullScreen$3;
.super Ljava/lang/Object;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;->showTimerDialog(Lcom/android/deskclock/Alarm;)V
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
    .line 275
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 278
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->handleKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v2, p3}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$400(Lcom/android/deskclock/AlarmAlertFullScreen;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #getter for: Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$200(Lcom/android/deskclock/AlarmAlertFullScreen;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 282
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget-object v1, v1, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V
    invoke-static {v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismissTimer()V
    invoke-static {v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$300(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget-object v2, v2, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V
    invoke-static {v2, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$3;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismissTimer()V
    invoke-static {v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$300(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 301
    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
