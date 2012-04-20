.class public final enum Lcom/miui/backup/BackupActivity$TabState;
.super Ljava/lang/Enum;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/backup/BackupActivity$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/backup/BackupActivity$TabState;

.field public static final enum CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

.field public static final enum LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/miui/backup/BackupActivity$TabState;

    const-string v1, "LOCALBACKUP"

    invoke-direct {v0, v1, v2}, Lcom/miui/backup/BackupActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    .line 42
    new-instance v0, Lcom/miui/backup/BackupActivity$TabState;

    const-string v1, "CLOUDBACKUP"

    invoke-direct {v0, v1, v3}, Lcom/miui/backup/BackupActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/backup/BackupActivity$TabState;->CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/backup/BackupActivity$TabState;

    sget-object v1, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/backup/BackupActivity$TabState;->CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/backup/BackupActivity$TabState;->$VALUES:[Lcom/miui/backup/BackupActivity$TabState;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/miui/backup/BackupActivity$TabState;
    .locals 3
    .parameter "value"

    .prologue
    .line 45
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 46
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    .line 49
    :goto_0
    return-object v0

    .line 48
    :cond_0
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 49
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    goto :goto_0

    .line 51
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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/backup/BackupActivity$TabState;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/miui/backup/BackupActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/BackupActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/miui/backup/BackupActivity$TabState;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->$VALUES:[Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v0}, [Lcom/miui/backup/BackupActivity$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/backup/BackupActivity$TabState;

    return-object v0
.end method
