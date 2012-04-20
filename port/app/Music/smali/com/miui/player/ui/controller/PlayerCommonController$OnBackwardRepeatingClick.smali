.class Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"

# interfaces
.implements Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/PlayerCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBackwardRepeatingClick"
.end annotation


# instance fields
.field private mCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

.field private mScanInfo:Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;

.field final synthetic this$0:Lcom/miui/player/ui/controller/PlayerCommonController;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/controller/PlayerCommonController;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;)V
    .locals 1
    .parameter
    .parameter "callback"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;->mScanInfo:Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;

    .line 120
    iput-object p2, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;->mCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    .line 121
    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 2
    .parameter "v"
    .parameter "delta"
    .parameter "repcnt"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;->mScanInfo:Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;

    invoke-static {p4, p2, p3, v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->scanBackward(IJLcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V

    .line 126
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;->mCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;->mCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;->mScanInfo:Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;

    invoke-interface {v0, v1}, Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;->update(Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V

    .line 129
    :cond_0
    return-void
.end method
