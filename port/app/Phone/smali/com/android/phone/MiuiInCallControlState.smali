.class public Lcom/android/phone/MiuiInCallControlState;
.super Lcom/android/phone/InCallControlState;
.source "MiuiInCallControlState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallControlState$1;
    }
.end annotation


# instance fields
.field public canRecordCall:Z

.field public isCallRecording:Z

.field public popupToolsPanel:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    .line 15
    return-void
.end method


# virtual methods
.method public update()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 19
    iget-boolean v1, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    .line 20
    .local v1, oldCanAddCall:Z
    iget-boolean v2, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    .line 21
    .local v2, oldCanSwap:Z
    invoke-super {p0}, Lcom/android/phone/InCallControlState;->update()V

    .line 23
    iget-object v4, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    .line 24
    iget-object v4, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 25
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v3

    .line 26
    .local v3, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v4, Lcom/android/phone/MiuiInCallControlState$1;->$SwitchMap$com$android$phone$MiuiConstants$CdmaCallState:[I

    invoke-virtual {v3}, Lcom/android/phone/MiuiConstants$CdmaCallState;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 71
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez v2, :cond_5

    iget-boolean v4, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v4, :cond_5

    :cond_2
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/phone/MiuiInCallControlState;->popupToolsPanel:Z

    .line 74
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_6

    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/android/phone/MiuiInCallControlState;->canRecordCall:Z

    .line 76
    iget-object v4, p0, Lcom/android/phone/MiuiInCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v4, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/MiuiInCallScreen;->isCallRecording()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/MiuiInCallControlState;->isCallRecording:Z

    .line 77
    return-void

    .line 29
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v3       #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    .line 30
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    .line 31
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    .line 32
    iput-boolean v5, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    .line 33
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v3, v4, :cond_4

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/phone/MiuiInCallControlState;->onHold:Z

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_3

    .line 36
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    .line 37
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    .line 38
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    .line 39
    iput-boolean v5, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    goto :goto_0

    .line 42
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    .line 43
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    .line 44
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    .line 45
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    goto :goto_0

    .line 48
    :pswitch_3
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    .line 49
    iput-boolean v5, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    .line 50
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    .line 51
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    goto :goto_0

    .line 54
    :pswitch_4
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    .line 55
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    .line 56
    iput-boolean v5, p0, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    .line 57
    iput-boolean v6, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_5
    move v4, v6

    .line 71
    goto :goto_1

    :cond_6
    move v5, v6

    .line 74
    goto :goto_2

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
