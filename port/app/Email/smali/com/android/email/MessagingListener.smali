.class public Lcom/android/email/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    .line 79
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 76
    return-void
.end method

.method public controllerCommandCompleted(Z)V
    .locals 0
    .parameter "moreCommandsToRun"

    .prologue
    .line 123
    return-void
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .locals 0
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 40
    return-void
.end method

.method public listFoldersFinished(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 43
    return-void
.end method

.method public listFoldersStarted(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 37
    return-void
.end method

.method public loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 112
    return-void
.end method

.method public loadAttachmentFinished(JJJ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 104
    return-void
.end method

.method public loadAttachmentStarted(JJJZ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 98
    return-void
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 0
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 73
    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 70
    return-void
.end method

.method public loadMessageForViewStarted(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 67
    return-void
.end method

.method public sendPendingMessagesCompleted(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 85
    return-void
.end method

.method public sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 88
    return-void
.end method

.method public sendPendingMessagesStarted(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 82
    return-void
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 64
    return-void
.end method

.method public synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p7, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 46
    return-void
.end method
