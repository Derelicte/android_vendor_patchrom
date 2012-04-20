.class public Lcom/android/email/MessageListContext;
.super Ljava/lang/Object;
.source "MessageListContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/MessageListContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAccountId:J

.field private final mMailboxId:J

.field private final mSearchParams:Lcom/android/emailcommon/service/SearchParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/android/email/MessageListContext$1;

    invoke-direct {v0}, Lcom/android/email/MessageListContext$1;-><init>()V

    sput-object v0, Lcom/android/email/MessageListContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJLcom/android/emailcommon/service/SearchParams;)V
    .locals 0
    .parameter "accountId"
    .parameter "searchMailboxId"
    .parameter "searchParams"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 58
    iput-wide p3, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    .line 59
    iput-object p5, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    .line 160
    const-class v0, Lcom/android/emailcommon/service/SearchParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/SearchParams;

    iput-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/email/MessageListContext$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/email/MessageListContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/email/MessageListContext;
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, -0x1

    .line 70
    const-string v7, "ACCOUNT_ID"

    invoke-virtual {p1, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 71
    .local v0, accountId:J
    const-string v7, "MAILBOX_ID"

    invoke-virtual {p1, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 73
    .local v2, mailboxId:J
    const-string v7, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    const-string v7, "QUERY_STRING"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, queryTerm:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lcom/android/email/Controller;->getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    iget-wide v5, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 77
    .local v5, searchMailboxId:J
    new-instance v7, Lcom/android/emailcommon/service/SearchParams;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/emailcommon/service/SearchParams;-><init>(JLjava/lang/String;)V

    invoke-static {v0, v1, v5, v6, v7}, Lcom/android/email/MessageListContext;->forSearch(JJLcom/android/emailcommon/service/SearchParams;)Lcom/android/email/MessageListContext;

    move-result-object v7

    .line 91
    .end local v4           #queryTerm:Ljava/lang/String;
    .end local v5           #searchMailboxId:J
    :goto_0
    return-object v7

    .line 79
    :cond_0
    cmp-long v7, v0, v9

    if-nez v7, :cond_1

    .line 80
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 81
    cmp-long v7, v0, v9

    if-nez v7, :cond_1

    .line 82
    const/4 v7, 0x0

    goto :goto_0

    .line 85
    :cond_1
    cmp-long v7, v2, v9

    if-nez v7, :cond_2

    .line 86
    const-wide/high16 v7, 0x1000

    cmp-long v7, v0, v7

    if-nez v7, :cond_3

    const-wide/16 v2, -0x2

    .line 91
    :cond_2
    :goto_1
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/MessageListContext;->forMailbox(JJ)Lcom/android/email/MessageListContext;

    move-result-object v7

    goto :goto_0

    .line 86
    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v0, v1, v7}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    goto :goto_1
.end method

.method public static forMailbox(JJ)Lcom/android/email/MessageListContext;
    .locals 6
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    cmp-long v0, p0, v4

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must specify an account"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 111
    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "Must specify a mailbox"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    new-instance v0, Lcom/android/email/MessageListContext;

    const/4 v5, 0x0

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessageListContext;-><init>(JJLcom/android/emailcommon/service/SearchParams;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    :cond_1
    move v1, v2

    .line 111
    goto :goto_1
.end method

.method public static forSearch(JJLcom/android/emailcommon/service/SearchParams;)Lcom/android/email/MessageListContext;
    .locals 6
    .parameter "accountId"
    .parameter "searchMailboxId"
    .parameter "searchParams"

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    const-string v1, "Can only search in normal accounts"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 103
    new-instance v0, Lcom/android/email/MessageListContext;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessageListContext;-><init>(JJLcom/android/emailcommon/service/SearchParams;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p1, p0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/android/email/MessageListContext;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 137
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/android/email/MessageListContext;

    .line 141
    .local v0, om:Lcom/android/email/MessageListContext;
    iget-wide v3, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-wide v5, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    iget-wide v5, v0, Lcom/android/email/MessageListContext;->mMailboxId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-object v4, v0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    return-wide v0
.end method

.method public getSearchParams()Lcom/android/emailcommon/service/SearchParams;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    return-object v0
.end method

.method public getSearchedMailbox()J
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v0, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSearch()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MessageListContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget-wide v0, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    return-void
.end method
