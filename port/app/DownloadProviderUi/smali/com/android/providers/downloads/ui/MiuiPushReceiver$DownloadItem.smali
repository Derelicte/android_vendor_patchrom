.class Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;
.super Ljava/lang/Object;
.source "MiuiPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/MiuiPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadItem"
.end annotation


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/MiuiPushReceiver;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/ui/MiuiPushReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;->this$0:Lcom/android/providers/downloads/ui/MiuiPushReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/ui/MiuiPushReceiver;Lcom/android/providers/downloads/ui/MiuiPushReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/MiuiPushReceiver$DownloadItem;-><init>(Lcom/android/providers/downloads/ui/MiuiPushReceiver;)V

    return-void
.end method
