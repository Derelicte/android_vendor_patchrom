.class Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$1;
.super Landroid/database/ContentObserver;
.source "BatteryStatusIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;

    #calls: Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->updateBatterySettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->access$000(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;)V

    .line 60
    return-void
.end method
