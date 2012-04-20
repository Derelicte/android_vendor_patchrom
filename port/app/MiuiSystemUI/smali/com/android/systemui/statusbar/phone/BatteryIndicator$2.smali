.class Lcom/android/systemui/statusbar/phone/BatteryIndicator$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BatteryIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mScreenIsOn:Z

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;

    #calls: Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->access$100(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V

    .line 118
    return-void
.end method
