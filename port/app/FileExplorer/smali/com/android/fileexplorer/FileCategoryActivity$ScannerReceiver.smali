.class Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FileCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScannerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileCategoryActivity;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fileexplorer/FileCategoryActivity;Lcom/android/fileexplorer/FileCategoryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 549
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, action:Ljava/lang/String;
    const-string v1, "FileCategoryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryActivity;->notifyFileChanged()V

    .line 556
    :cond_1
    return-void
.end method
