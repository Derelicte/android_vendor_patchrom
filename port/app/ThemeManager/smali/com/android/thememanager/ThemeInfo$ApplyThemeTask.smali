.class public Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplyThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplyFlags:J

.field private mContext:Landroid/content/Context;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mOldLockscrrenContainThemeValue:Z

.field private mProgress:Landroid/app/ProgressDialog;

.field private mRemoveFlags:J

.field private mRestoreDefaultFlags:J

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;JJLjava/lang/Runnable;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "removeFlags"
    .parameter "applyFlags"
    .parameter "finishRunnable"

    .prologue
    const-wide/16 v4, 0x0

    .line 601
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    .line 602
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    .line 603
    iput-object p2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    .line 604
    iget v0, p1, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v0, p5, p6}, Lcom/android/thememanager/ThemeHelper;->getCompatibleFlag(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    .line 605
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    or-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    .line 606
    iput-object p7, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    .line 608
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->containLockscreenThemeValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    .line 612
    :cond_0
    return-void
.end method


# virtual methods
.method containLockscreenThemeValue()Z
    .locals 3

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, ret:Z
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    const-string v2, "/data/system/theme//lockscreen"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    const-string v2, "theme_values.xml"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 661
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :goto_1
    return v0

    .line 660
    .restart local v1       #zipfile:Ljava/util/zip/ZipFile;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 662
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 591
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "object"

    .prologue
    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-wide v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    iget-wide v3, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    #calls: Lcom/android/thememanager/ThemeInfo;->apply(JJLandroid/app/ProgressDialog;)V
    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->access$000(Lcom/android/thememanager/ThemeInfo;JJLandroid/app/ProgressDialog;)V

    .line 628
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 629
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 591
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 11
    .parameter "object"

    .prologue
    const-wide/16 v9, 0x2000

    const-wide/16 v7, 0x0

    .line 636
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 637
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-wide v3, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    iget-wide v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/thememanager/ThemeInfo;->saveUserPreference(JJ)V

    .line 638
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 643
    :cond_0
    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    iget-wide v4, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRestoreDefaultFlags:J

    or-long v0, v2, v4

    .line 644
    .local v0, configurationFlag:J
    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v7

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-eqz v2, :cond_2

    .line 646
    iget-boolean v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->containLockscreenThemeValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    :cond_1
    or-long/2addr v0, v9

    .line 651
    :cond_2
    const-string v2, "ThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------- apply theme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-object v4, v4, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/thememanager/ThemeHelper;->sendThemeConfigurationChangeMsg(Landroid/content/Context;J)V

    .line 653
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 654
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 616
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    .line 617
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 618
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 621
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 622
    return-void
.end method
