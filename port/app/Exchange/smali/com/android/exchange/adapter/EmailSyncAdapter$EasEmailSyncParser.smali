.class public Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasEmailSyncParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    }
.end annotation


# instance fields
.field private final changedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;"
        }
    .end annotation
.end field

.field private final deletedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mMailboxIdAsString:Ljava/lang/String;

.field private final newEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/EmailSyncAdapter;)V
    .locals 2
    .parameter
    .parameter "parser"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 499
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 500
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V
    .locals 2
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 494
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 495
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 496
    return-void
.end method

.method private addParser()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 676
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 677
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 678
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 679
    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 681
    const/4 v1, 0x1

    .line 683
    .local v1, status:I
    :goto_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 684
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 695
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 686
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 689
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    .line 690
    goto :goto_0

    .line 692
    :sswitch_2
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_0

    .line 699
    :cond_0
    if-eq v1, v4, :cond_1

    .line 700
    new-instance v2, Lcom/android/exchange/CommandStatusException;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/android/exchange/CommandStatusException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 702
    :cond_1
    return-object v0

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x1d -> :sswitch_2
    .end sparse-switch
.end method

.method private attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 11
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v6, 0x1

    .line 785
    const/4 v2, 0x0

    .line 786
    .local v2, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 787
    .local v4, length:Ljava/lang/String;
    const/4 v5, 0x0

    .line 788
    .local v5, location:Ljava/lang/String;
    const/4 v3, 0x0

    .line 789
    .local v3, isInline:Z
    const/4 v1, 0x0

    .line 791
    .local v1, contentId:Ljava/lang/String;
    :goto_0
    const/16 v7, 0x85

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 792
    iget v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v7, :sswitch_data_0

    .line 813
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 796
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 797
    goto :goto_0

    .line 800
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 801
    goto :goto_0

    .line 804
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 805
    goto :goto_0

    .line 807
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v7

    if-ne v7, v6, :cond_0

    move v3, v6

    .line 808
    :goto_1
    goto :goto_0

    .line 807
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 810
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 811
    goto :goto_0

    .line 817
    :cond_1
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 818
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 819
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v7, "base64"

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 820
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 821
    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 822
    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 823
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 824
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, v7, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 828
    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 829
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 832
    :cond_2
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 833
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v7

    iget v7, v7, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v7, :cond_4

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v9}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v9

    iget v9, v9, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 836
    :cond_3
    const/16 v7, 0x200

    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 839
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iput-boolean v6, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 842
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_5
    return-void

    .line 792
    :sswitch_data_0
    .sparse-switch
        0x87 -> :sswitch_1
        0x88 -> :sswitch_2
        0x90 -> :sswitch_0
        0x44c -> :sswitch_2
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
        0x453 -> :sswitch_4
        0x455 -> :sswitch_3
    .end sparse-switch
.end method

.method private attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 2
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 773
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 779
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 776
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 782
    :cond_0
    return-void

    .line 773
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x44f -> :sswitch_0
    .end sparse-switch
.end method

.method private bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    const-string v1, "1"

    .line 722
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 723
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 724
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 732
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 726
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 727
    goto :goto_0

    .line 729
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 730
    goto :goto_0

    .line 736
    :cond_0
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 741
    :goto_1
    return-void

    .line 739
    :cond_1
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_1

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
    .end sparse-switch
.end method

.method private changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;IJ)V
    .locals 8
    .parameter
    .parameter "oldRead"
    .parameter "oldFlag"
    .parameter "oldFlags"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "IJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 960
    const/4 v4, 0x0

    .line 961
    .local v4, read:Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 962
    .local v5, flag:Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 963
    .local v6, flags:Ljava/lang/Integer;
    :cond_0
    :goto_0
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 964
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 983
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 966
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 967
    goto :goto_0

    .line 966
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 969
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v5

    .line 970
    goto :goto_0

    .line 972
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v7

    .line 974
    .local v7, val:I
    const v0, -0xc0001

    and-int/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 975
    if-eq v7, v1, :cond_2

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    .line 977
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v2, 0x4

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 978
    :cond_3
    if-ne v7, v3, :cond_0

    .line 979
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 987
    .end local v7           #val:I
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    .line 989
    :cond_7
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    move-object v1, p0

    move-wide v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_8
    return-void

    .line 964
    nop

    :sswitch_data_0
    .sparse-switch
        0x95 -> :sswitch_0
        0xba -> :sswitch_1
        0x58b -> :sswitch_2
    .end sparse-switch
.end method

.method private flagParser()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 707
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 708
    .local v0, state:Ljava/lang/Boolean;
    :goto_0
    const/16 v1, 0xba

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 709
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 714
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 711
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 712
    goto :goto_0

    :cond_0
    move v1, v2

    .line 711
    goto :goto_1

    .line 717
    :cond_1
    return-object v0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_0
    .end packed-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "serverId"
    .parameter "projection"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 873
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v0

    aput-object p1, v0, v8

    .line 874
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v1, v0, v7

    .line 875
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 877
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 878
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 879
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple messages with the same serverId/mailbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 881
    :cond_1
    return-object v6
.end method

.method private meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;-><init>()V

    .line 618
    .local v0, packedString:Lcom/android/emailcommon/mail/PackedString$Builder;
    :goto_0
    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 619
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 649
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 621
    :sswitch_0
    const-string v1, "DTSTAMP"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :sswitch_1
    const-string v1, "DTSTART"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :sswitch_2
    const-string v1, "DTEND"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :sswitch_3
    const-string v1, "ORGMAIL"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :sswitch_4
    const-string v1, "LOC"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :sswitch_5
    const-string v1, "UID"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :sswitch_6
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipParser(I)V

    goto :goto_0

    .line 643
    :sswitch_7
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->recurrencesParser()V

    goto :goto_0

    .line 646
    :sswitch_8
    const-string v1, "RESPONSE"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 653
    const-string v1, "TITLE"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_1
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 656
    return-void

    .line 619
    nop

    :sswitch_data_0
    .sparse-switch
        0x9b -> :sswitch_6
        0x9d -> :sswitch_0
        0x9e -> :sswitch_2
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_3
        0xa6 -> :sswitch_8
        0xa7 -> :sswitch_7
        0xb1 -> :sswitch_1
        0xb4 -> :sswitch_5
    .end sparse-switch
.end method

.method private mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V
    .locals 7
    .parameter "msg"
    .parameter "mimeData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 753
    .local v2, in:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V

    .line 755
    .local v3, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v5, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-static {v3, v5, v0}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 759
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 761
    .local v4, tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    invoke-static {v4, p1, v5}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 763
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 764
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    return-void

    .line 765
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v2           #in:Ljava/io/ByteArrayInputStream;
    .end local v3           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v4           #tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v5           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :catch_0
    move-exception v1

    .line 767
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private recurrencesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    :goto_0
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 660
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 665
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 662
    :pswitch_0
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipParser(I)V

    goto :goto_0

    .line 668
    :cond_0
    return-void

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 13
    .parameter "msg"
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v0, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v4, 0x0

    .line 507
    .local v4, truncated:Z
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v6

    if-eq v6, v12, :cond_8

    .line 508
    iget v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v6, :sswitch_data_0

    .line 600
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 511
    :sswitch_0
    invoke-direct {p0, v0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 514
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_0

    .line 517
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 518
    .local v1, froms:[Lcom/android/emailcommon/mail/Address;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-lez v6, :cond_1

    .line 519
    aget-object v6, v1, v8

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 521
    :cond_1
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 524
    .end local v1           #froms:[Lcom/android/emailcommon/mail/Address;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto :goto_0

    .line 527
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto :goto_0

    .line 530
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto :goto_0

    .line 533
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 536
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_1
    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    .line 539
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 542
    :sswitch_9
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    goto/16 :goto_0

    .line 545
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    move v4, v7

    .line 546
    :goto_2
    goto/16 :goto_0

    :cond_3
    move v4, v8

    .line 545
    goto :goto_2

    .line 550
    :sswitch_b
    if-eqz v4, :cond_4

    .line 556
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    .line 557
    new-array v6, v11, [Ljava/lang/String;

    const-string v9, "Partially loaded: "

    aput-object v9, v6, v8

    iget-object v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 558
    iput v11, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 559
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z
    invoke-static {v6, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    goto/16 :goto_0

    .line 561
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, text:Ljava/lang/String;
    iput-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 569
    .end local v3           #text:Ljava/lang/String;
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, messageClass:Ljava/lang/String;
    const-string v6, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 571
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 572
    :cond_5
    const-string v6, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 573
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 577
    .end local v2           #messageClass:Ljava/lang/String;
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 580
    :sswitch_f
    iget v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipParser(I)V

    goto/16 :goto_0

    .line 583
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueBytes()[B

    move-result-object v6

    const/16 v9, 0x8

    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerConversationId:Ljava/lang/String;

    goto/16 :goto_0

    .line 588
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueBytes()[B

    goto/16 :goto_0

    .line 591
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v5

    .line 592
    .local v5, val:I
    if-eq v5, v7, :cond_6

    if-ne v5, v11, :cond_7

    .line 594
    :cond_6
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v9, 0x4

    or-int/2addr v6, v9

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 595
    :cond_7
    if-ne v5, v12, :cond_0

    .line 596
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v9, 0x8

    or-int/2addr v6, v9

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 604
    .end local v5           #val:I
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 605
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 607
    :cond_9
    return-void

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_0
        0x8c -> :sswitch_c
        0x8f -> :sswitch_5
        0x93 -> :sswitch_d
        0x94 -> :sswitch_6
        0x95 -> :sswitch_7
        0x96 -> :sswitch_1
        0x97 -> :sswitch_3
        0x98 -> :sswitch_2
        0x99 -> :sswitch_4
        0xa2 -> :sswitch_e
        0xb6 -> :sswitch_b
        0xb7 -> :sswitch_a
        0xba -> :sswitch_9
        0x44a -> :sswitch_8
        0x44e -> :sswitch_0
        0x589 -> :sswitch_10
        0x58a -> :sswitch_11
        0x58b -> :sswitch_12
        0x608 -> :sswitch_f
    .end sparse-switch
.end method

.method changeParser(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 927
    const/4 v8, 0x0

    .line 928
    .local v8, serverId:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 929
    .local v2, oldRead:Ljava/lang/Boolean;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 930
    .local v3, oldFlag:Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 931
    .local v4, flags:I
    const-wide/16 v5, 0x0

    .line 932
    .local v5, id:J
    :goto_0
    invoke-virtual {p0, v12}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 933
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 953
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 935
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 936
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 938
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v11, "Changing "

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 940
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 941
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v0, v9

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 942
    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 943
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    .line 946
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move v0, v10

    .line 940
    goto :goto_1

    :cond_2
    move v0, v10

    .line 941
    goto :goto_2

    .line 946
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v7           #c:Landroid/database/Cursor;
    :sswitch_1
    move-object v0, p0

    move-object v1, p1

    .line 950
    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;IJ)V

    goto :goto_0

    .line 956
    :cond_3
    return-void

    .line 933
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 998
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 999
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1002
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deleteParser(Ljava/util/ArrayList;I)V

    .line 1004
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1005
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1006
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeParser(Ljava/util/ArrayList;)V

    .line 1007
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1009
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 1011
    :cond_4
    return-void
.end method

.method public commit()V
    .locals 14

    .prologue
    .line 1071
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1075
    .local v7, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v9, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1076
    .local v0, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1078
    .local v5, id:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1079
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1080
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1082
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1084
    .local v3, dupId:Ljava/lang/Long;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delete duplicate with id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 1085
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1089
    .end local v3           #dupId:Ljava/lang/Long;
    :catchall_0
    move-exception v9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v9

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1094
    if-eqz v5, :cond_0

    .line 1095
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Fetched body successfully for "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 1096
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v5, v9, v10

    .line 1097
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "messageKey=?"

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "textContent"

    iget-object v11, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "_id=?"

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "flagLoaded"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1108
    .end local v0           #c:Landroid/database/Cursor;
    .end local v5           #id:Ljava/lang/String;
    .end local v7           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1109
    .restart local v7       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-virtual {v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1112
    .end local v7           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1113
    .local v5, id:Ljava/lang/Long;
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    goto :goto_3

    .line 1118
    .end local v5           #id:Ljava/lang/Long;
    :cond_4
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1120
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    .line 1121
    .local v1, change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    .local v2, cv:Landroid/content/ContentValues;
    iget-object v9, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    if-eqz v9, :cond_5

    .line 1123
    const-string v9, "flagRead"

    iget-object v10, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1125
    :cond_5
    iget-object v9, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    .line 1126
    const-string v9, "flagFavorite"

    iget-object v10, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1128
    :cond_6
    iget-object v9, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    if-eqz v9, :cond_7

    .line 1129
    const-string v9, "flags"

    iget-object v10, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    :cond_7
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1139
    .end local v1           #change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_8
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1140
    .local v6, mailboxValues:Landroid/content/ContentValues;
    const-string v9, "syncKey"

    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    sget-object v9, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v9}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1147
    :try_start_1
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v9}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v9

    if-eqz v9, :cond_9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1157
    :goto_5
    return-void

    .line 1149
    :cond_9
    :try_start_2
    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "com.android.email.provider"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1150
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v12, v12, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, " SyncKey saved as: "

    aput-object v12, v9, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v12, v12, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v12, v9, v11

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1156
    :goto_6
    :try_start_3
    monitor-exit v10

    goto :goto_5

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 1153
    :catch_0
    move-exception v9

    goto :goto_6

    .line 1151
    :catch_1
    move-exception v9

    goto :goto_6
.end method

.method deleteParser(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "entryTag"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    .local p1, deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 887
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 905
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 889
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, serverId:Ljava/lang/String;
    invoke-static {}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$400()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 893
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 896
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 908
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 887
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public failedUpdateParser(I)V
    .locals 9
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1020
    const/4 v2, 0x0

    .line 1021
    .local v2, serverId:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 1022
    iget v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_2

    .line 1023
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v3

    .line 1024
    .local v3, status:I
    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 1025
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1027
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1028
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1029
    .local v1, id:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed; will retry"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1030
    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1031
    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1037
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #status:I
    :cond_2
    iget v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 1038
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1040
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 1043
    :cond_4
    return-void
.end method

.method public getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 855
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 856
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 857
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 858
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 860
    :cond_0
    if-nez v0, :cond_2

    .line 862
    const-string v2, "application/octet-stream"

    .line 869
    .local v2, mimeType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 864
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public responsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 1047
    :cond_0
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 1048
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 1049
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->failedUpdateParser(I)V

    goto :goto_0

    .line 1050
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1052
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, sse:Lcom/android/exchange/CommandStatusException;
    iget v1, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    if-ne v1, v5, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1059
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1060
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1066
    .end local v0           #sse:Lcom/android/exchange/CommandStatusException;
    :cond_3
    return-void
.end method
