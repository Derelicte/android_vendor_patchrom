.class public Lcom/android/exchange/CommandStatusException$CommandStatus;
.super Ljava/lang/Object;
.source "CommandStatusException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/CommandStatusException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandStatus"
.end annotation


# static fields
.field private static final STATUS_TEXT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InvalidContent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "InvalidWBXML"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "InvalidXML"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "InvalidDateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "InvalidIDCombo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "InvalidIDs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "InvalidMIME"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DeviceIdError"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DeviceTypeError"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ServerError"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ServerErrorRetry"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ADAccessDenied"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Quota"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ServerOffline"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SendQuota"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RecipientUnresolved"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ReplyNotAllowed"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SentPreviously"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "NoRecipient"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SendFailed"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ReplyFailed"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "AttsTooLarge"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "NoMailbox"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CantBeAnonymous"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "UserNotFound"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "UserDisabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "NewMailbox"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "LegacyMailbox"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "DeviceBlocked"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "AccessDenied"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "AcctDisabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SyncStateNF"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SyncStateLocked"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SyncStateCorrupt"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SyncStateExists"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SyncStateInvalid"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "BadCommand"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "BadVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "NotFullyProvisionable"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "RemoteWipe"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "LegacyDevice"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "NotProvisioned"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "PolicyRefresh"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "BadPolicyKey"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ExternallyManaged"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "NoRecurrence"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "UnexpectedClass"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "RemoteHasNoSSL"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "InvalidRequest"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "ItemNotFound"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/CommandStatusException$CommandStatus;->STATUS_TEXT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBadSyncKey(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 98
    const/16 v0, 0x86

    if-eq p0, v0, :cond_0

    const/16 v0, 0x88

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeniedAccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 103
    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/16 v0, 0x81

    if-eq p0, v0, :cond_0

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8b

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb1

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedsProvisioning(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 91
    const/16 v0, 0x8e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTransientError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 115
    const/16 v0, 0x84

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .parameter "status"

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/16 v2, 0x65

    if-lt p0, v2, :cond_0

    const/16 v2, 0x96

    if-le p0, v2, :cond_2

    .line 124
    :cond_0
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_1
    :goto_0
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 126
    :cond_2
    add-int/lit8 v0, p0, -0x65

    .line 127
    .local v0, offset:I
    sget-object v2, Lcom/android/exchange/CommandStatusException$CommandStatus;->STATUS_TEXT:[Ljava/lang/String;

    array-length v2, v2

    if-gt v0, v2, :cond_1

    .line 128
    sget-object v2, Lcom/android/exchange/CommandStatusException$CommandStatus;->STATUS_TEXT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
