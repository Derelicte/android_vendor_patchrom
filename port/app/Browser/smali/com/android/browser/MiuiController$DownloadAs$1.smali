.class Lcom/android/browser/MiuiController$DownloadAs$1;
.super Ljava/lang/Object;
.source "MiuiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiController$DownloadAs;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiController$DownloadAs;

.field final synthetic val$downloadEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiController$DownloadAs;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->this$0:Lcom/android/browser/MiuiController$DownloadAs;

    iput-object p2, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->val$downloadEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->val$downloadEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, filename:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->this$0:Lcom/android/browser/MiuiController$DownloadAs;

    iget-object v0, v0, Lcom/android/browser/MiuiController$DownloadAs;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->this$0:Lcom/android/browser/MiuiController$DownloadAs;

    iget-object v1, v1, Lcom/android/browser/MiuiController$DownloadAs;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->this$0:Lcom/android/browser/MiuiController$DownloadAs;

    iget-boolean v6, v4, Lcom/android/browser/MiuiController$DownloadAs;->mPrivateBrowsing:Z

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/browser/MiuiDownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 548
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->this$0:Lcom/android/browser/MiuiController$DownloadAs;

    iget-object v4, v0, Lcom/android/browser/MiuiController$DownloadAs;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->this$0:Lcom/android/browser/MiuiController$DownloadAs;

    iget-object v5, v0, Lcom/android/browser/MiuiController$DownloadAs;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/browser/MiuiController$DownloadAs$1;->this$0:Lcom/android/browser/MiuiController$DownloadAs;

    iget-boolean v9, v0, Lcom/android/browser/MiuiController$DownloadAs;->mPrivateBrowsing:Z

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Lcom/android/browser/MiuiDownloadHandler;->onImageDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
