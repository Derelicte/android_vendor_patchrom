.class Lcom/android/updater/ShareActivity$MessageChecker;
.super Lcom/android/updater/tasks/BaseChecker;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageChecker"
.end annotation


# instance fields
.field private mRank:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/updater/ShareActivity;


# direct methods
.method public constructor <init>(Lcom/android/updater/ShareActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "rank"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/updater/ShareActivity$MessageChecker;->this$0:Lcom/android/updater/ShareActivity;

    .line 398
    invoke-direct {p0, p2}, Lcom/android/updater/tasks/BaseChecker;-><init>(Landroid/content/Context;)V

    .line 399
    iput-object p3, p0, Lcom/android/updater/ShareActivity$MessageChecker;->mRank:Ljava/lang/String;

    .line 400
    return-void
.end method


# virtual methods
.method public checkUpdates()Ljava/lang/StringBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/updater/ShareActivity$MessageChecker;->mRank:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->getShareMessageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, uriWithParams:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/updater/ShareActivity$MessageChecker;->checkUpdates(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method
