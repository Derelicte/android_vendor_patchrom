.class public Lcom/android/inputmethod/latin/ComposingStateManager;
.super Ljava/lang/Object;
.source "ComposingStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/latin/ComposingStateManager;


# instance fields
.field private mAutoCorrectionIndicatorOn:Z

.field private mIsComposing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ComposingStateManager;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->sInstance:Lcom/android/inputmethod/latin/ComposingStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/ComposingStateManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->sInstance:Lcom/android/inputmethod/latin/ComposingStateManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isAutoCorrectionIndicatorOn()Z
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFinishComposingText()V
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z

    if-eqz v0, :cond_1

    .line 48
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    const-string v1, "Finish composing text."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStartComposingText()V
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z

    if-nez v0, :cond_1

    .line 38
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    const-string v1, "Start composing text."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoCorrectionIndicatorOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set auto correction Indicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
