.class final enum Lcom/android/updater/tasks/UpdateChecker$RomType;
.super Ljava/lang/Enum;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/tasks/UpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/updater/tasks/UpdateChecker$RomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/updater/tasks/UpdateChecker$RomType;

.field public static final enum IncrementalUpdate:Lcom/android/updater/tasks/UpdateChecker$RomType;

.field public static final enum Update:Lcom/android/updater/tasks/UpdateChecker$RomType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/android/updater/tasks/UpdateChecker$RomType;

    const-string v1, "Update"

    invoke-direct {v0, v1, v2}, Lcom/android/updater/tasks/UpdateChecker$RomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/updater/tasks/UpdateChecker$RomType;->Update:Lcom/android/updater/tasks/UpdateChecker$RomType;

    new-instance v0, Lcom/android/updater/tasks/UpdateChecker$RomType;

    const-string v1, "IncrementalUpdate"

    invoke-direct {v0, v1, v3}, Lcom/android/updater/tasks/UpdateChecker$RomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/updater/tasks/UpdateChecker$RomType;->IncrementalUpdate:Lcom/android/updater/tasks/UpdateChecker$RomType;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/updater/tasks/UpdateChecker$RomType;

    sget-object v1, Lcom/android/updater/tasks/UpdateChecker$RomType;->Update:Lcom/android/updater/tasks/UpdateChecker$RomType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/updater/tasks/UpdateChecker$RomType;->IncrementalUpdate:Lcom/android/updater/tasks/UpdateChecker$RomType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/updater/tasks/UpdateChecker$RomType;->$VALUES:[Lcom/android/updater/tasks/UpdateChecker$RomType;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/updater/tasks/UpdateChecker$RomType;
    .locals 1
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/android/updater/tasks/UpdateChecker$RomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/updater/tasks/UpdateChecker$RomType;

    return-object v0
.end method

.method public static values()[Lcom/android/updater/tasks/UpdateChecker$RomType;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/updater/tasks/UpdateChecker$RomType;->$VALUES:[Lcom/android/updater/tasks/UpdateChecker$RomType;

    invoke-virtual {v0}, [Lcom/android/updater/tasks/UpdateChecker$RomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/updater/tasks/UpdateChecker$RomType;

    return-object v0
.end method
