.class Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/DownloadNotification;->updateCompletedNotification(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadCompleteInfo"
.end annotation


# instance fields
.field public completed:Z

.field public isKeyPackageNameOrId:Z

.field final synthetic this$0:Lcom/android/providers/downloads/DownloadNotification;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;->this$0:Lcom/android/providers/downloads/DownloadNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
