.class Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardLayoutState"
.end annotation


# instance fields
.field private mIsAlphabetMode:Z

.field private mIsShiftLocked:Z

.field private mIsShifted:Z

.field private mIsValid:Z

.field final synthetic this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;-><init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)V

    return-void
.end method


# virtual methods
.method public getKeyboardId()Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$300(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$300(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$200(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$400(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    goto :goto_0
.end method

.method public restore()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    if-nez v4, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    .line 144
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    .line 146
    .local v0, isAlphabetMode:Z
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 147
    .local v1, isShiftLocked:Z
    :goto_1
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    .local v2, isShifted:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    if-eq v4, v1, :cond_4

    .line 149
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    goto :goto_0

    .end local v1           #isShiftLocked:Z
    .end local v2           #isShifted:Z
    :cond_2
    move v1, v3

    .line 146
    goto :goto_1

    .restart local v1       #isShiftLocked:Z
    :cond_3
    move v2, v3

    .line 147
    goto :goto_2

    .line 150
    .restart local v2       #isShifted:Z
    :cond_4
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    if-eq v4, v2, :cond_0

    .line 151
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressShift(Z)V

    .line 152
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseShift(Z)V

    goto :goto_0
.end method

.method public save()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$100(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    .line 120
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsAlphabetMode:Z

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    .line 122
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    .line 127
    :goto_1
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    goto :goto_0

    .line 124
    :cond_2
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$100(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-static {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$200(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    goto :goto_1
.end method
