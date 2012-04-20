.class public Lcom/android/updater/tasks/BaseUpdateCheckerTask;
.super Landroid/os/AsyncTask;
.source "BaseUpdateCheckerTask.java"

# interfaces
.implements Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/updater/customTypes/FullUpdateInfo;",
        ">;",
        "Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsUnAuthorized:Z

.field private final mUpdateChecker:Lcom/android/updater/tasks/UpdateChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Lcom/android/updater/tasks/UpdateChecker;

    invoke-direct {v0, p1, p0}, Lcom/android/updater/tasks/UpdateChecker;-><init>(Landroid/content/Context;Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;)V

    iput-object v0, p0, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->mUpdateChecker:Lcom/android/updater/tasks/UpdateChecker;

    .line 18
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/updater/customTypes/FullUpdateInfo;
    .locals 1
    .parameter "params"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->mUpdateChecker:Lcom/android/updater/tasks/UpdateChecker;

    invoke-virtual {v0}, Lcom/android/updater/tasks/UpdateChecker;->checkForNewUpdates()Lcom/android/updater/customTypes/FullUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->doInBackground([Ljava/lang/Void;)Lcom/android/updater/customTypes/FullUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public unAuthorized()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->mIsUnAuthorized:Z

    .line 28
    return-void
.end method
