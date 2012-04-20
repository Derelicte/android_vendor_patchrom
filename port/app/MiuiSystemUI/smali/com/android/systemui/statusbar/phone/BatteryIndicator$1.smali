.class Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;
.super Landroid/database/ContentObserver;
.source "BatteryIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/BatteryIndicator;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryIndicator;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;

    #calls: Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateBatterySettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->access$000(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V

    .line 87
    return-void
.end method
