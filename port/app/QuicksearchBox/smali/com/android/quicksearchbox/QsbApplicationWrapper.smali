.class public Lcom/android/quicksearchbox/QsbApplicationWrapper;
.super Landroid/app/Application;
.source "QsbApplicationWrapper.java"


# instance fields
.field private mApp:Lcom/android/quicksearchbox/QsbApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected createQsbApplication()Lcom/android/quicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/quicksearchbox/QsbApplication;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/QsbApplication;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized getApp()Lcom/android/quicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->mApp:Lcom/android/quicksearchbox/QsbApplication;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->createQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->mApp:Lcom/android/quicksearchbox/QsbApplication;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->mApp:Lcom/android/quicksearchbox/QsbApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->mApp:Lcom/android/quicksearchbox/QsbApplication;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->mApp:Lcom/android/quicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->close()V

    .line 31
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 33
    return-void

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
