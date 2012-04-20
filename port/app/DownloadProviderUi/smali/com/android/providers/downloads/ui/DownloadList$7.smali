.class Lcom/android/providers/downloads/ui/DownloadList$7;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->deleteDownloadsDialog([Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$deleteFileCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$downloadIds:[Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/widget/CheckBox;[Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->val$deleteFileCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->val$downloadIds:[Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 712
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->val$deleteFileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$7;->val$downloadIds:[Ljava/lang/Long;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->doDeleteDownloads(Z[Ljava/lang/Long;)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$1700(Lcom/android/providers/downloads/ui/DownloadList;Z[Ljava/lang/Long;)V

    .line 713
    return-void
.end method
