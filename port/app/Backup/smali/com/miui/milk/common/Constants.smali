.class public Lcom/miui/milk/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static PROMPT_READING:Ljava/lang/String;

.field public static PROMPT_SENDING:Ljava/lang/String;

.field public static PROMPT_WRITING:Ljava/lang/String;

.field public static final SYSTEM_DATA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v0, ""

    sput-object v0, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ADDRESSBOOK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CALLLOG"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WIFI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NOTE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/common/Constants;->SYSTEM_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
