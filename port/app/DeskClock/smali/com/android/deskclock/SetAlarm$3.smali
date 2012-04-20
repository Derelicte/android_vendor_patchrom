.class Lcom/android/deskclock/SetAlarm$3;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$3;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$3;->this$0:Lcom/android/deskclock/SetAlarm;

    const/4 v1, 0x1

    #setter for: Lcom/android/deskclock/SetAlarm;->mEnableAlarm:Z
    invoke-static {v0, v1}, Lcom/android/deskclock/SetAlarm;->access$102(Lcom/android/deskclock/SetAlarm;Z)Z

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$3;->this$0:Lcom/android/deskclock/SetAlarm;

    const/4 v1, 0x0

    #calls: Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J
    invoke-static {v0, v1}, Lcom/android/deskclock/SetAlarm;->access$000(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)J

    .line 186
    return-void
.end method
