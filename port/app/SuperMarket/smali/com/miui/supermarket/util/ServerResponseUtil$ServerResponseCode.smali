.class public final enum Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
.super Ljava/lang/Enum;
.source "ServerResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/util/ServerResponseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum ACCOUNT_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum APP_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum BAD_AUTH:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum CONNECTION_EXCEPTION:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum CONNECTION_TIME_OUT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum GENERAL_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum INVALID_ARGUMENT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum IVALID_RESPONSE_DATA:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum SERVER_IO_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum TOKEN_EXPIRED:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field public static final enum UNBOUND_USERID:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 20
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "BAD_AUTH"

    invoke-direct {v0, v1, v4}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->BAD_AUTH:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 21
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "APP_NOT_EXIST"

    invoke-direct {v0, v1, v5}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->APP_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 22
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "INVALID_ARGUMENT"

    invoke-direct {v0, v1, v6}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->INVALID_ARGUMENT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 23
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->INTERNAL_SERVER_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 24
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "ACCOUNT_NOT_EXIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->ACCOUNT_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 25
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "CONNECTION_TIME_OUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->CONNECTION_TIME_OUT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 26
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "CONNECTION_EXCEPTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->CONNECTION_EXCEPTION:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 27
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "IVALID_RESPONSE_DATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->IVALID_RESPONSE_DATA:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 28
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "SERVER_IO_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->SERVER_IO_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 29
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "UNBOUND_USERID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->UNBOUND_USERID:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 30
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "TOKEN_EXPIRED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->TOKEN_EXPIRED:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 31
    new-instance v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    const-string v1, "GENERAL_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->GENERAL_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 18
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    sget-object v1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->BAD_AUTH:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->APP_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->INVALID_ARGUMENT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->INTERNAL_SERVER_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->ACCOUNT_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->CONNECTION_TIME_OUT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->CONNECTION_EXCEPTION:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->IVALID_RESPONSE_DATA:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->SERVER_IO_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->UNBOUND_USERID:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->TOKEN_EXPIRED:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->GENERAL_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->$VALUES:[Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->$VALUES:[Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    invoke-virtual {v0}, [Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    return-object v0
.end method
