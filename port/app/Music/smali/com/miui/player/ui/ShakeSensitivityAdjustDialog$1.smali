.class Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;
.super Ljava/lang/Object;
.source "ShakeSensitivityAdjustDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;->this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 55
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 56
    const/4 p2, 0x1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;->this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;

    mul-int/lit8 v1, p2, 0xf

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    .line 59
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 64
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 69
    return-void
.end method
