.class public Lcom/android/phone/MiuiInCallTouchUi;
.super Lcom/android/phone/InCallTouchUi;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallTouchUi$3;,
        Lcom/android/phone/MiuiInCallTouchUi$Handler;,
        Lcom/android/phone/MiuiInCallTouchUi$PanelState;,
        Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mAddButton:Landroid/widget/Button;

.field protected mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

.field private mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

.field private mAudioModeButton:Landroid/widget/ToggleButton;

.field private mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

.field private mAudioModePanel:Landroid/view/View;

.field private mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

.field private mCallRecordPrompt:Landroid/widget/TextView;

.field private mCallRecordTimer:Landroid/widget/Chronometer;

.field private mContactButton:Landroid/widget/Button;

.field private mDampingInterpolator:Lmiui/animation/DampingInterpolator;

.field private mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

.field private mDialerButton:Landroid/widget/ToggleButton;

.field private mEndButton:Landroid/widget/Button;

.field private mHoldButton:Landroid/widget/ToggleButton;

.field private mInCallControlsMask:Landroid/view/View;

.field protected mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

.field private mIsAutoHideAudioModePanel:Z

.field private mLastClickTime:J

.field mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoteButton:Landroid/widget/Button;

.field private mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordButton:Landroid/widget/Button;

.field private mStopRecordButton:Landroid/view/View;

.field private mSwapButton:Landroid/widget/Button;

.field private mToolsButton:Landroid/widget/ToggleButton;

.field private mToolsPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lmiui/animation/DampingInterpolator;

    const/high16 v1, 0x4120

    invoke-direct {v0, v1}, Lmiui/animation/DampingInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 61
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 734
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 127
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallTouchUi$Handler;-><init>(Lcom/android/phone/MiuiInCallTouchUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 129
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 130
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x64

    const/4 v10, 0x2

    const/4 v1, 0x1

    const v9, 0x3c03126f

    const/4 v8, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 741
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v0, v2, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 743
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto :goto_0

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 748
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 749
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v0, :cond_3

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    :cond_3
    const/4 v0, 0x0

    .line 754
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 757
    :cond_4
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v3, :cond_5

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 761
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 763
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_9

    .line 764
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 765
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 769
    if-eqz v0, :cond_8

    .line 770
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 774
    :goto_1
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    .line 776
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 803
    :cond_6
    :goto_2
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_e

    .line 804
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 805
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v2, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v2

    .line 807
    if-eqz v0, :cond_d

    .line 808
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 812
    :goto_3
    invoke-virtual {v2}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    .line 814
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 838
    :cond_7
    :goto_4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 839
    new-instance v1, Lcom/android/phone/MiuiInCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiInCallTouchUi$2;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 847
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 848
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 851
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    goto/16 :goto_0

    .line 772
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_1

    .line 777
    :cond_9
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_b

    .line 778
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 779
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 783
    if-eqz v0, :cond_a

    .line 784
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 788
    :goto_5
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 786
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_5

    .line 789
    :cond_b
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_6

    .line 790
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 791
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 795
    if-eqz v0, :cond_c

    .line 796
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 800
    :goto_6
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 798
    :cond_c
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_6

    .line 810
    :cond_d
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto/16 :goto_3

    .line 815
    :cond_e
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_10

    .line 816
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 817
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v1, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v1

    .line 819
    if-eqz v0, :cond_f

    .line 820
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 824
    :goto_7
    invoke-virtual {v1}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 822
    :cond_f
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_7

    .line 825
    :cond_10
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_7

    .line 826
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 827
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v1, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v1

    .line 829
    if-eqz v0, :cond_11

    .line 830
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 834
    :goto_8
    invoke-virtual {v1}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto/16 :goto_4

    .line 832
    :cond_11
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_8
.end method

.method private showAudioModePopup(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/16 v3, 0x64

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 598
    return-void
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 0

    .prologue
    .line 591
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f04001e

    return v0
.end method

.method protected getIncomingCallWidget()Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 602
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_answer_widget"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    :goto_0
    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 606
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-nez v1, :cond_1

    .line 607
    const v1, 0x7f0700ae

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 608
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 609
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiInCallAnswerWidget;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 610
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 611
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f070032

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->setSlidingTarget(Landroid/view/View;Landroid/view/View;)V

    .line 613
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 635
    .end local v0           #stub:Landroid/view/ViewStub;
    :goto_1
    return-object v1

    .line 602
    :cond_0
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    goto :goto_0

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-nez v1, :cond_2

    .line 615
    const v1, 0x7f0700ad

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 616
    .restart local v0       #stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 617
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 618
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 619
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTranslationY(F)V

    .line 620
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    goto :goto_1

    .line 623
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_2
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$3;->$SwitchMap$com$android$phone$MiuiInCallTouchUi$AnswerWidgetType:[I

    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 635
    const/4 v1, 0x0

    goto :goto_1

    .line 625
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v1, :cond_3

    .line 626
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 628
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    goto :goto_1

    .line 630
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-eqz v1, :cond_4

    .line 631
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 633
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    goto :goto_1

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAudioModePanelOpened()Z
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialerPanelOpened()Z
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToolsPanelOpened()Z
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 260
    .local v2, now:J
    iget-wide v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 312
    :goto_0
    return-void

    .line 263
    :cond_0
    iput-wide v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 266
    .local v1, id:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 310
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 276
    :pswitch_2
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 277
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 280
    :pswitch_3
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 281
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 284
    :pswitch_4
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 285
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 289
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_2

    .line 292
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_3

    .line 295
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_4

    .line 299
    :pswitch_8
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 300
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 301
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v4, v5, :cond_5

    .line 302
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_1

    .line 305
    :cond_5
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700a8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 149
    const v1, 0x7f07009a

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 150
    const v1, 0x7f0700bf

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    new-instance v2, Lcom/android/phone/MiuiInCallTouchUi$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiInCallTouchUi$1;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 161
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 163
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 165
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 167
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 169
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 171
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    .line 173
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    .line 175
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    .line 177
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    .line 181
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    .line 182
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    .line 188
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    .line 192
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    .line 196
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 199
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    .line 210
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    .line 211
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    .line 213
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    .line 215
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v1, 0x7f0700af

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    .line 220
    const v1, 0x7f0700b6

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    .line 221
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method onStartCallRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 717
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 720
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 721
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    :cond_0
    return-void
.end method

.method onStopCallRecord()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 727
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 728
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    .line 142
    return-void
.end method

.method protected setInCallWidgetResources(Z)V
    .locals 2
    .parameter "allowRespondViaSms"

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 644
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 646
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 656
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 651
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method public showAudioModePanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 697
    if-eqz p1, :cond_1

    .line 698
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showAudioModePopup()V
    .locals 1

    .prologue
    .line 581
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 582
    return-void
.end method

.method public showDialerPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 685
    if-eqz p1, :cond_1

    .line 686
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v1

    .line 661
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-ne v1, v2, :cond_1

    .line 662
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 663
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 665
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->reset(Lcom/android/internal/telephony/CallManager;)V

    .line 671
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public showToolsPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 709
    if-eqz p1, :cond_1

    .line 710
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method public triggerPing()V
    .locals 2

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-ne v0, v1, :cond_0

    .line 676
    invoke-super {p0}, Lcom/android/phone/InCallTouchUi;->triggerPing()V

    .line 678
    :cond_0
    return-void
.end method

.method protected updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 7
    .parameter "inCallControlState"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 527
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 528
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-nez v4, :cond_1

    .line 529
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 530
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 531
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 532
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 535
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 536
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 537
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 539
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c032e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 542
    .local v0, buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020047

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 555
    :goto_1
    const/4 v1, 0x0

    .line 556
    .local v1, switchAudioModeFinished:Z
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v4, :cond_4

    .line 557
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 558
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 559
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 560
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 572
    :goto_2
    if-eqz v1, :cond_0

    .line 573
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 574
    sget-object v2, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0

    .line 547
    .end local v0           #buttonText:Ljava/lang/CharSequence;
    .end local v1           #switchAudioModeFinished:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c032d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 549
    .restart local v0       #buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020044

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .restart local v1       #switchAudioModeFinished:Z
    :cond_3
    move v1, v3

    .line 560
    goto :goto_2

    .line 561
    :cond_4
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v4, :cond_6

    .line 562
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 563
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 564
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 565
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_5

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 567
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 568
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 569
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 570
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_7

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_4
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const v12, 0x7f0e003c

    const v11, 0x7f0e003b

    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 321
    const/4 v3, 0x0

    .line 323
    .local v3, curCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 324
    .local v1, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 325
    .local v0, activeBgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_8

    .line 328
    move-object v3, v1

    .line 338
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 352
    .local v5, phoneType:I
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v4

    check-cast v4, Lcom/android/phone/MiuiInCallControlState;

    .line 358
    .local v4, inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v6, :cond_a

    .line 359
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 362
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 382
    :goto_1
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_1

    .line 383
    if-eq v5, v10, :cond_0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    .line 390
    :cond_0
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->canEndCall:Z

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 409
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 410
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 413
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 414
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 417
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 420
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canRecordCall:Z

    if-nez v6, :cond_d

    .line 421
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 422
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 423
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v12}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 424
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :goto_2
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMute:Z

    if-eqz v6, :cond_f

    .line 439
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 440
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 441
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 454
    :goto_3
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v6, :cond_10

    .line 455
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 456
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 457
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->onHold:Z

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 458
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 467
    :goto_4
    iget-object v9, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_11

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 474
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 475
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 476
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v12}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 479
    :cond_2
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v6, :cond_3

    .line 485
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 489
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_4

    .line 495
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 501
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v6, :cond_5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_12

    .line 503
    :cond_5
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 504
    sget-object v6, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 505
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    :goto_6
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->bluetoothEnabled:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    if-eqz v6, :cond_13

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v8, :cond_13

    .line 513
    iput-boolean v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 514
    const/16 v6, 0x1388

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 519
    :cond_6
    :goto_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_7

    .line 521
    iput-boolean v10, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 523
    :cond_7
    return-void

    .line 329
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v4           #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .end local v5           #phoneType:I
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_9

    .line 332
    move-object v3, v0

    goto/16 :goto_0

    .line 335
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_0

    .line 363
    .restart local v4       #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .restart local v5       #phoneType:I
    :cond_a
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_b

    .line 364
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 365
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 368
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 377
    :cond_b
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v12}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 380
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 392
    :cond_c
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 397
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 426
    :cond_d
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->isCallRecording:Z

    if-eqz v6, :cond_e

    .line 427
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 430
    :cond_e
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 432
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 433
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 443
    :cond_f
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 444
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v12}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 445
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 460
    :cond_10
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 461
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_11
    move v6, v8

    .line 467
    goto/16 :goto_5

    .line 507
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_12
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 515
    :cond_13
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->popupToolsPanel:Z

    if-eqz v6, :cond_6

    .line 516
    invoke-virtual {p0, v10}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto/16 :goto_7
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter "cm"

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x2

    const v7, 0x3b03126f

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 225
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 226
    .local v1, oldVisiblity:I
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 228
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    if-ne v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v7, v5}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->start()Landroid/animation/Animator;

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 245
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 251
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 252
    invoke-static {v2}, Lmiui/animation/AnimatorBuilder;->of(Landroid/animation/Animator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/AnimatorBuilder;->start()Landroid/animation/Animator;

    .line 253
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
