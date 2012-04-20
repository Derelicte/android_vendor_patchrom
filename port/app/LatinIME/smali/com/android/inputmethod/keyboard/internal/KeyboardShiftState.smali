.class public Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;
.super Ljava/lang/Object;
.source "KeyboardShiftState.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 129
    packed-switch p0, :pswitch_data_0

    .line 136
    const-string v0, "UKNOWN"

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "NORMAL"

    goto :goto_0

    .line 131
    :pswitch_1
    const-string v0, "MANUAL_SHIFTED"

    goto :goto_0

    .line 132
    :pswitch_2
    const-string v0, "MANUAL_SHIFTED_FROM_AUTO"

    goto :goto_0

    .line 133
    :pswitch_3
    const-string v0, "AUTO_SHIFTED"

    goto :goto_0

    .line 134
    :pswitch_4
    const-string v0, "SHIFT_LOCKED"

    goto :goto_0

    .line 135
    :pswitch_5
    const-string v0, "SHIFT_LOCK_SHIFTED"

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public isAutomaticTemporaryUpperCase()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualTemporaryUpperCase()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 115
    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualTemporaryUpperCaseFromAuto()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftLockShifted()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftLocked()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftedOrShiftLocked()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutomaticTemporaryUpperCase()V
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 93
    .local v0, oldState:I
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 96
    return-void
.end method

.method public setShiftLocked(Z)V
    .locals 2
    .parameter "newShiftLockState"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 69
    .local v0, oldState:I
    if-eqz p1, :cond_0

    .line 70
    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 79
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 82
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 79
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setShifted(Z)Z
    .locals 4
    .parameter "newShiftState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 38
    .local v0, oldState:I
    if-eqz p1, :cond_0

    .line 39
    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    if-eq v3, v0, :cond_1

    :goto_1
    return v1

    .line 41
    :pswitch_1
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 51
    :cond_0
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 55
    :pswitch_5
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_0

    .line 58
    :pswitch_6
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 64
    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 51
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
