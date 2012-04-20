.class Lcom/android/email/MessagingController$7;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingActions(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$7;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1053
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/MessagingController$7;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1054
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 1068
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_0
    :goto_0
    return-void

    .line 1057
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    iget-object v2, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/Account;)V
    invoke-static {v2, v0}, Lcom/android/email/MessagingController;->access$900(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :catch_0
    move-exception v1

    .line 1060
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    sget-boolean v2, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v2, :cond_0

    .line 1061
    const-string v2, "Email"

    const-string v3, "processPendingActions"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
