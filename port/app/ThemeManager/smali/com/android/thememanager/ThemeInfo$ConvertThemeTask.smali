.class public Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConvertThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplyFlags:J

.field private mContext:Landroid/content/Context;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mRemoveFlags:J

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;JJLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "removeFlags"
    .parameter "applyFlags"
    .parameter "applyFinishRunnable"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    .line 676
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 677
    iput-object p2, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mContext:Landroid/content/Context;

    .line 678
    iput-wide p3, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mRemoveFlags:J

    .line 679
    iput-wide p5, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mApplyFlags:J

    .line 680
    iput-object p7, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    .line 681
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-object v1, v1, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->convertIntoNewFormat(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 668
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 700
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-wide v1, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mRemoveFlags:J

    iget-wide v3, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mApplyFlags:J

    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->apply_async(JJLjava/lang/Runnable;)V

    .line 710
    :goto_0
    return-void

    .line 703
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 668
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 685
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mProgress:Landroid/app/ProgressDialog;

    .line 686
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 687
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mContext:Landroid/content/Context;

    const v2, 0x7f090034

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-object v4, v4, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 690
    return-void
.end method
