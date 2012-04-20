.class Lcom/android/systemui/statusbar/phone/StatusBarToggles$1;
.super Ljava/lang/Object;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarToggles;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarToggles;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarToggles;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarToggles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarToggles$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarToggles;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    const/4 v1, 0x0

    sget v2, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/settings/ToggleManager;->setBrightness(II)V

    .line 82
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 75
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 72
    return-void
.end method
