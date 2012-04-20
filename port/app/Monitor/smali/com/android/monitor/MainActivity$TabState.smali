.class public final enum Lcom/android/monitor/MainActivity$TabState;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/monitor/MainActivity$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/monitor/MainActivity$TabState;

.field public static final enum NETWORKMONITOR:Lcom/android/monitor/MainActivity$TabState;

.field public static final enum TRAFFIC:Lcom/android/monitor/MainActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/monitor/MainActivity$TabState;

    const-string v1, "TRAFFIC"

    invoke-direct {v0, v1, v2}, Lcom/android/monitor/MainActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/monitor/MainActivity$TabState;->TRAFFIC:Lcom/android/monitor/MainActivity$TabState;

    .line 39
    new-instance v0, Lcom/android/monitor/MainActivity$TabState;

    const-string v1, "NETWORKMONITOR"

    invoke-direct {v0, v1, v3}, Lcom/android/monitor/MainActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/monitor/MainActivity$TabState;->NETWORKMONITOR:Lcom/android/monitor/MainActivity$TabState;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/monitor/MainActivity$TabState;

    sget-object v1, Lcom/android/monitor/MainActivity$TabState;->TRAFFIC:Lcom/android/monitor/MainActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/monitor/MainActivity$TabState;->NETWORKMONITOR:Lcom/android/monitor/MainActivity$TabState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/monitor/MainActivity$TabState;->$VALUES:[Lcom/android/monitor/MainActivity$TabState;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/android/monitor/MainActivity$TabState;
    .locals 3
    .parameter "value"

    .prologue
    .line 42
    sget-object v0, Lcom/android/monitor/MainActivity$TabState;->TRAFFIC:Lcom/android/monitor/MainActivity$TabState;

    invoke-virtual {v0}, Lcom/android/monitor/MainActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 43
    sget-object v0, Lcom/android/monitor/MainActivity$TabState;->TRAFFIC:Lcom/android/monitor/MainActivity$TabState;

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/android/monitor/MainActivity$TabState;->NETWORKMONITOR:Lcom/android/monitor/MainActivity$TabState;

    invoke-virtual {v0}, Lcom/android/monitor/MainActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 46
    sget-object v0, Lcom/android/monitor/MainActivity$TabState;->NETWORKMONITOR:Lcom/android/monitor/MainActivity$TabState;

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/monitor/MainActivity$TabState;
    .locals 1
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/android/monitor/MainActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/monitor/MainActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/android/monitor/MainActivity$TabState;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/monitor/MainActivity$TabState;->$VALUES:[Lcom/android/monitor/MainActivity$TabState;

    invoke-virtual {v0}, [Lcom/android/monitor/MainActivity$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/monitor/MainActivity$TabState;

    return-object v0
.end method
