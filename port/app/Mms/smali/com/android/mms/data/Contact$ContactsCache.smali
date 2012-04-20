.class Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final SELF_PROJECTION:[Ljava/lang/String;

.field private static final SP_PROJECTION:[Ljava/lang/String;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 490
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 492
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 518
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    .line 527
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 532
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data4"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 551
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "photo"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->SP_PROJECTION:[Ljava/lang/String;

    .line 1140
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 562
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 566
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 567
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 11
    .parameter "orig"
    .parameter "newContactData"

    .prologue
    const/4 v6, 0x1

    .line 753
    #getter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v7

    #getter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 806
    :cond_0
    :goto_0
    return v6

    .line 757
    :cond_1
    #getter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 758
    .local v5, oldNick:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, newNick:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 764
    #getter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)J

    move-result-wide v7

    #getter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 768
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v7

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 773
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v7

    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 778
    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Z

    move-result v7

    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Z

    move-result v8

    if-ne v7, v8, :cond_0

    .line 782
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, oldName:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 789
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, oldLabel:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 796
    #getter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)J

    move-result-wide v7

    #getter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 801
    #getter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)Z

    move-result v7

    #getter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)Z

    move-result v8

    if-ne v7, v8, :cond_0

    .line 806
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 4
    .parameter "contact"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 994
    monitor-enter p1

    .line 995
    const/4 v2, 0x1

    :try_start_0
    #setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 996
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;J)J

    .line 997
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 998
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 999
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 1001
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;J)J

    .line 1002
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v2

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;I)I

    .line 1004
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$2102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->access$2202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    const/16 v2, 0xa

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Z)Z

    .line 1012
    monitor-exit p1

    .line 1013
    return-void

    :cond_0
    move v0, v1

    .line 1006
    goto :goto_0

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fillSelfContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 2
    .parameter "contact"
    .parameter "cursor"

    .prologue
    .line 1016
    monitor-enter p1

    .line 1017
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1018
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1025
    :cond_0
    monitor-exit p1

    .line 1026
    return-void

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;
    .locals 6
    .parameter "number"
    .parameter "isMe"
    .parameter "canBlock"

    .prologue
    .line 635
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 636
    const-string p1, ""

    .line 644
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->internalGet(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 645
    .local v1, contact:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 647
    .local v2, r:Ljava/lang/Runnable;
    monitor-enter v1

    .line 650
    :goto_0
    if-eqz p3, :cond_1

    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v4

    goto :goto_0

    .line 660
    :cond_1
    :try_start_2
    #getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_3

    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 661
    const/4 v4, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 663
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "async update for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " canBlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 668
    :cond_2
    move-object v0, v1

    .line 669
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    .end local v2           #r:Ljava/lang/Runnable;
    .local v3, r:Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 681
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 684
    if-eqz v2, :cond_4

    .line 685
    if-eqz p3, :cond_5

    .line 686
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 691
    :cond_4
    :goto_1
    return-object v1

    .line 681
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 688
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 681
    .end local v2           #r:Ljava/lang/Runnable;
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    goto :goto_2
.end method

.method private getContactInfo(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    .locals 1
    .parameter "c"

    .prologue
    .line 870
    #getter for: Lcom/android/mms/data/Contact;->mIsMe:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$2500(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForSelf()Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    .line 872
    :cond_0
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->isAlphaNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    :cond_1
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 875
    :cond_2
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1068
    new-instance v8, Lcom/android/mms/data/Contact;

    invoke-direct {v8, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1069
    .local v8, entry:Lcom/android/mms/data/Contact;
    #setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1071
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v11, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1078
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1080
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1081
    const/4 v9, 0x0

    .line 1083
    .local v9, found:Z
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1084
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {v8, v0, v1}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;J)J

    .line 1085
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v8, v0, v1}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 1086
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_5

    move v0, v11

    :goto_0
    #setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Z)Z

    .line 1087
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;I)I

    .line 1089
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {v8, v0, v1}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;J)J

    .line 1090
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1092
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1093
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1096
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    const/4 v9, 0x1

    .line 1105
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    if-eqz v9, :cond_0

    .line 1112
    .end local v9           #found:Z
    .end local v10           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1115
    :cond_4
    return-object v8

    .restart local v9       #found:Z
    :cond_5
    move v0, v12

    .line 1086
    goto :goto_0

    .line 1105
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1112
    .end local v9           #found:Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "number"

    .prologue
    .line 919
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 920
    new-instance v7, Lcom/android/mms/data/Contact;

    const/4 v0, 0x0

    invoke-direct {v7, p1, v0}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 921
    .local v7, entry:Lcom/android/mms/data/Contact;
    const/4 v0, 0x1

    #setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 926
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 927
    .local v9, normalizedNumber:Ljava/lang/String;
    invoke-static {v9}, Lmiui/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 928
    .local v8, minMatch:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 930
    .local v10, numberLen:Ljava/lang/String;
    const/4 v11, 0x0

    .line 931
    .local v11, numberMiuiNormalized:Ljava/lang/String;
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v12

    .line 932
    .local v12, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v12, :cond_0

    .line 933
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v11

    .line 937
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 939
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v10, v4, v0

    const/4 v0, 0x2

    aput-object v9, v4, v0

    const/4 v0, 0x3

    aput-object v10, v4, v0

    .line 946
    .local v4, args:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 948
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 949
    const-string v0, "Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0, p1, v7}, Lcom/android/mms/data/Contact$ContactsCache;->getSPInfoForPhoneNumber(Ljava/lang/String;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    move-result-object v7

    .line 964
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #entry:Lcom/android/mms/data/Contact;
    .end local v10           #numberLen:Ljava/lang/String;
    .end local v11           #numberMiuiNormalized:Ljava/lang/String;
    .end local v12           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    :goto_1
    return-object v7

    .line 941
    .restart local v7       #entry:Lcom/android/mms/data/Contact;
    .restart local v10       #numberLen:Ljava/lang/String;
    .restart local v11       #numberMiuiNormalized:Ljava/lang/String;
    .restart local v12       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_2
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 942
    .restart local v3       #selection:Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v11, v4, v0

    const/4 v0, 0x2

    aput-object v10, v4, v0

    const/4 v0, 0x3

    aput-object v9, v4, v0

    const/4 v0, 0x4

    aput-object v10, v4, v0

    .restart local v4       #args:[Ljava/lang/String;
    goto :goto_0

    .line 955
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 956
    invoke-direct {p0, v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 958
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, v7}, Lcom/android/mms/data/Contact$ContactsCache;->getSPInfoForPhoneNumber(Ljava/lang/String;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 961
    .end local v7           #entry:Lcom/android/mms/data/Contact;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .restart local v7       #entry:Lcom/android/mms/data/Contact;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactInfoForSelf()Lcom/android/mms/data/Contact;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 971
    new-instance v7, Lcom/android/mms/data/Contact;

    const/4 v0, 0x1

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(ZLcom/android/mms/data/Contact$1;)V

    .line 972
    .local v7, entry:Lcom/android/mms/data/Contact;
    const/4 v0, 0x3

    #setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 975
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 977
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 978
    const-string v0, "Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactInfoForSelf() returned NULL cursor! contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_0
    return-object v7

    .line 984
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    invoke-direct {p0, v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->fillSelfContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .parameter "presence"

    .prologue
    .line 1057
    if-eqz p1, :cond_0

    .line 1058
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 1061
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSPInfoForPhoneNumber(Ljava/lang/String;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    .locals 10
    .parameter "number"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1029
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v9

    .line 1030
    .local v9, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    move-object v6, p1

    .line 1031
    .local v6, address:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v6

    .line 1034
    :cond_0
    invoke-virtual {p2, v6}, Lcom/android/mms/data/Contact;->setEffectiveNumber(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->SP_PROJECTION:[Ljava/lang/String;

    const-string v3, "addr=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1038
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1040
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1043
    const/4 v0, 0x1

    #setter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p2, v0}, Lcom/android/mms/data/Contact;->access$1802(Lcom/android/mms/data/Contact;Z)Z

    .line 1044
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1052
    :cond_2
    :goto_0
    return-object p2

    .line 1044
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1046
    :catch_0
    move-exception v8

    .line 1047
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "Contact"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1049
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private internalGet(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 8
    .parameter "numberOrEmail"
    .parameter "isMe"

    .prologue
    const/4 v3, 0x1

    .line 1143
    monitor-enter p0

    .line 1147
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1150
    .local v3, isNotRegularPhoneNumber:Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1153
    .local v4, key:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1154
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_5

    .line 1155
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1156
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_6

    .line 1157
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1158
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_3

    .line 1159
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1160
    monitor-exit p0

    .line 1177
    .end local v2           #i:I
    .end local v5           #length:I
    :goto_3
    return-object v0

    .line 1147
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1150
    .restart local v3       #isNotRegularPhoneNumber:Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->simplifyPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1163
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lmiui/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1164
    monitor-exit p0

    goto :goto_3

    .line 1178
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2           #i:I
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #length:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1156
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v3       #isNotRegularPhoneNumber:Z
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1169
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    :cond_6
    if-eqz p2, :cond_7

    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/android/mms/data/Contact;-><init>(ZLcom/android/mms/data/Contact$1;)V

    .line 1176
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    monitor-exit p0

    goto :goto_3

    .line 1173
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_7
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private isAlphaNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v0, 0x1

    .line 898
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v0

    .line 902
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private simplifyPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 1126
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1127
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1131
    .end local v1           #ch:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1134
    .end local p1
    :goto_1
    return-object p1

    .restart local p1
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private updateContact(Lcom/android/mms/data/Contact;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 810
    if-nez p1, :cond_0

    .line 864
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 815
    .local v0, entry:Lcom/android/mms/data/Contact;
    monitor-enter p1

    .line 816
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 817
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContact: contact changed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 821
    :cond_1
    #getter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 822
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 823
    #getter for: Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    #getter for: Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$2000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$2002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 826
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 827
    #getter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;J)J

    .line 828
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;I)I

    .line 829
    #getter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$2100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$2102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    #getter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)Z

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1802(Lcom/android/mms/data/Contact;Z)Z

    .line 831
    #getter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;J)J

    .line 832
    #getter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 833
    #getter for: Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$2200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$2202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 834
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 835
    #getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Z)Z

    .line 837
    #calls: Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$2300(Lcom/android/mms/data/Contact;)V

    .line 845
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 850
    invoke-static {}, Lcom/android/mms/data/Contact;->access$2400()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    :try_start_1
    invoke-static {}, Lcom/android/mms/data/Contact;->access$2400()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 852
    .local v2, iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 853
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 855
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_1

    .line 863
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 852
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4

    .line 859
    :cond_2
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 860
    const/4 v4, 0x0

    :try_start_5
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 861
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 862
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 863
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 862
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method


# virtual methods
.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 1
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 18
    .parameter "uris"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_0

    .line 701
    const/4 v9, 0x0

    .line 745
    :goto_0
    return-object v9

    .line 703
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v13, idSetBuilder:Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    .line 705
    .local v11, first:Z
    move-object/from16 v7, p1

    .local v7, arr$:[Landroid/os/Parcelable;
    array-length v14, v7

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v14, :cond_3

    aget-object v15, v7, v12

    .local v15, p:Landroid/os/Parcelable;
    move-object/from16 v16, v15

    .line 706
    check-cast v16, Landroid/net/Uri;

    .line 707
    .local v16, uri:Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    if-eqz v11, :cond_2

    .line 709
    const/4 v11, 0x0

    .line 710
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 712
    :cond_2
    const/16 v1, 0x2c

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 717
    .end local v15           #p:Landroid/os/Parcelable;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v11, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    .line 718
    :cond_4
    const/4 v8, 0x0

    .line 719
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 725
    .end local v4           #whereClause:Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_6

    .line 726
    const/4 v9, 0x0

    goto :goto_0

    .line 729
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v9, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 733
    new-instance v10, Lcom/android/mms/data/Contact;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v10, v1, v2, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 735
    .local v10, entry:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    .line 736
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v17, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->simplifyPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 743
    .end local v10           #entry:Lcom/android/mms/data/Contact;
    .end local v17           #value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method invalidate()V
    .locals 6

    .prologue
    .line 1184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v1, copy:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mms/data/Contact;>;"
    monitor-enter p0

    .line 1186
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1187
    .local v4, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1188
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1190
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v4           #values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;>;"
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1192
    .local v0, c:Lcom/android/mms/data/Contact;
    monitor-enter v0

    .line 1193
    const/4 v5, 0x1

    :try_start_2
    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 1194
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 1196
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method
