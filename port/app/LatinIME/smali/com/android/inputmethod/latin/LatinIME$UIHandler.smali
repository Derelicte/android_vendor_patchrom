.class public Lcom/android/inputmethod/latin/LatinIME$UIHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/latin/LatinIME;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelayBeforeFadeoutLanguageOnSpacebar:I

.field private mDelayUpdateShiftState:I

.field private mDelayUpdateSuggestions:I

.field private mDoubleSpacesTurnIntoPeriodTimeout:J

.field private mDurationOfFadeoutLanguageOnSpacebar:I

.field private mFinalFadeoutFactorOfLanguageOnSpacebar:F

.field private mHasPendingFinishInput:Z

.field private mHasPendingFinishInputView:Z

.field private mHasPendingStartInput:Z

.field private mIgnoreSpecialKeyTimeout:J

.field private mIsOrientationChanging:Z

.field private mPendingSuccesiveImsCallback:Z


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method private executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "latinIme"
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    if-eqz v0, :cond_0

    .line 422
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    if-eqz v0, :cond_1

    .line 424
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 425
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    if-eqz v0, :cond_2

    .line 426
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {p1, p2, p3}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 427
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 428
    return-void
.end method

.method private resetPendingImsCallback()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 415
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 416
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 417
    return-void
.end method


# virtual methods
.method public cancelDoubleSpacesTimer()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 381
    return-void
.end method

.method public cancelUpdateBigramPredictions()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 344
    return-void
.end method

.method public cancelUpdateShiftState()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 335
    return-void
.end method

.method public cancelUpdateSuggestions()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 322
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinIME;

    .line 281
    .local v1, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    .line 282
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 283
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 285
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    goto :goto_0

    .line 288
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_0

    .line 291
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateBigramPredictions()V

    goto :goto_0

    .line 294
    :pswitch_4
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleVoiceResults(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 298
    :pswitch_5
    if-eqz v0, :cond_3

    .line 299
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v4, v3, v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    invoke-virtual {v0, v4, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    .line 303
    :cond_3
    const/4 v3, 0x4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDurationOfFadeoutLanguageOnSpacebar:I

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 307
    :pswitch_6
    if-eqz v0, :cond_0

    .line 308
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    invoke-virtual {v0, v4, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public hasPendingUpdateSuggestions()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isAcceptingDoubleSpaces()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isIgnoringSpecialKey()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    .line 264
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateSuggestions:I

    .line 266
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateShiftState:I

    .line 268
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDurationOfFadeoutLanguageOnSpacebar:I

    .line 270
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    .line 272
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    .line 274
    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIgnoreSpecialKeyTimeout:J

    .line 276
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 475
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 483
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 480
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 481
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    .line 465
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 472
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 470
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 431
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 444
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 438
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccesiveImsCallback:Z

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 441
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 442
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/16 v2, 0x8

    .line 447
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 462
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccesiveImsCallback:Z

    if-eqz v1, :cond_1

    .line 453
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccesiveImsCallback:Z

    .line 454
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 455
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 459
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 460
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$500(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method public postUpdateBigramPredictions()V
    .locals 3

    .prologue
    const/4 v0, 0x7

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateSuggestions:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 340
    return-void
.end method

.method public postUpdateShiftKeyState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateShiftState:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    return-void
.end method

.method public postUpdateSuggestions()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateSuggestions:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    return-void
.end method

.method public startDisplayLanguageOnSpacebar(Z)V
    .locals 7
    .parameter "localeChanged"

    .prologue
    const/4 v5, 0x3

    .line 351
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/LatinIME;

    .line 352
    .local v2, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 353
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 354
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 355
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_2

    .line 356
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    .line 358
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-nez p1, :cond_0

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    if-gez v4, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 361
    .local v3, needsToDisplayLanguage:Z
    :goto_0
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    if-eqz v4, :cond_1

    .line 362
    if-eqz v3, :cond_4

    const/high16 v4, 0x3f80

    :goto_1
    invoke-virtual {v0, v4, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    .line 367
    :cond_1
    if-eqz p1, :cond_2

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    if-lez v4, :cond_2

    .line 368
    invoke-virtual {p0, v5, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayBeforeFadeoutLanguageOnSpacebar:I

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .end local v3           #needsToDisplayLanguage:Z
    :cond_2
    return-void

    .line 358
    .restart local v1       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 362
    .restart local v3       #needsToDisplayLanguage:Z
    :cond_4
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mFinalFadeoutFactorOfLanguageOnSpacebar:F

    goto :goto_1
.end method

.method public startDoubleSpacesTimer()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    return-void
.end method

.method public startKeyTypedTimer()V
    .locals 3

    .prologue
    const/4 v0, 0x6

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIgnoreSpecialKeyTimeout:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 390
    return-void
.end method

.method public startOrientationChanging()V
    .locals 2

    .prologue
    .line 404
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 405
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 406
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 407
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 408
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->saveKeyboardState()V

    .line 411
    :cond_0
    return-void
.end method
