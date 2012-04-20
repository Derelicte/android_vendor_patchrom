.class Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$2;
.super Ljava/lang/Object;
.source "BatteryStatusIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->updateBatterySettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$2;->this$0:Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;

    #getter for: Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mIconId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->access$100(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->setImageResource(I)V

    .line 202
    return-void
.end method
