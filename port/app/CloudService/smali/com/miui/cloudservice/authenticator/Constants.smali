.class public Lcom/miui/cloudservice/authenticator/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final errorCodes:[Ljava/lang/String;

.field public static final errorIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RegisteredAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BadVerification"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BadAuthentication"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EmailNotVerified"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TermsNotAgreed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AccountDeleted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AccountDisabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ServiceDisabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ServiceUnavailable"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HasBound"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "BadVkey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TooManyTimes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NicknameExist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "HasNick"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/cloudservice/authenticator/Constants;->errorCodes:[Ljava/lang/String;

    .line 145
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/cloudservice/authenticator/Constants;->errorIds:[I

    return-void

    :array_0
    .array-data 0x4
        0xct 0x0t 0x7t 0x7ft
        0xet 0x0t 0x7t 0x7ft
        0x10t 0x0t 0x7t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
        0x17t 0x0t 0x7t 0x7ft
        0x19t 0x0t 0x7t 0x7ft
        0xft 0x0t 0x7t 0x7ft
        0x11t 0x0t 0x7t 0x7ft
        0x1at 0x0t 0x7t 0x7ft
        0x1bt 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
