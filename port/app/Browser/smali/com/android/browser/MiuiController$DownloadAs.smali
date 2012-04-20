.class public Lcom/android/browser/MiuiController$DownloadAs;
.super Lcom/android/browser/Controller$Download;
.source "MiuiController.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DownloadAs"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "activity"
    .parameter "toDownload"
    .parameter "privateBrowsing"

    .prologue
    .line 519
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 520
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 523
    iget-object v2, p0, Lcom/android/browser/MiuiController$DownloadAs;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/browser/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/browser/MiuiController$DownloadAs;->saveDataUri()V

    .line 552
    :goto_0
    return v6

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/android/browser/MiuiController$DownloadAs;->mText:Ljava/lang/String;

    invoke-static {v2, v5, v5}, Lcom/android/browser/MiuiDownloadHandler;->guessImageFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, filename:Ljava/lang/String;
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/browser/MiuiController$DownloadAs;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 528
    .local v0, downloadEditText:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 530
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 532
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/browser/MiuiController$DownloadAs;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0176

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/browser/MiuiController$DownloadAs$1;

    invoke-direct {v4, p0, v0}, Lcom/android/browser/MiuiController$DownloadAs$1;-><init>(Lcom/android/browser/MiuiController$DownloadAs;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
