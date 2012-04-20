.class public final enum Lcom/miui/supermarket/MainTabActivity$TabState;
.super Ljava/lang/Enum;
.source "MainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/MainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/supermarket/MainTabActivity$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/supermarket/MainTabActivity$TabState;

.field public static final enum APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

.field public static final enum NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/miui/supermarket/MainTabActivity$TabState;

    const-string v1, "NECESSARY"

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/MainTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    .line 66
    new-instance v0, Lcom/miui/supermarket/MainTabActivity$TabState;

    const-string v1, "APP_MANAGEMENT"

    invoke-direct {v0, v1, v3}, Lcom/miui/supermarket/MainTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/supermarket/MainTabActivity$TabState;

    sget-object v1, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/supermarket/MainTabActivity$TabState;->APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->$VALUES:[Lcom/miui/supermarket/MainTabActivity$TabState;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/miui/supermarket/MainTabActivity$TabState;
    .locals 3
    .parameter "value"

    .prologue
    .line 69
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 70
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    .line 72
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 72
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for tab state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/supermarket/MainTabActivity$TabState;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/MainTabActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/miui/supermarket/MainTabActivity$TabState;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->$VALUES:[Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v0}, [Lcom/miui/supermarket/MainTabActivity$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/supermarket/MainTabActivity$TabState;

    return-object v0
.end method
