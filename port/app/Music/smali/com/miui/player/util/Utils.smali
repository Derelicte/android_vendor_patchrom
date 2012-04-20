.class public Lcom/miui/player/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final LONG_EMPTY_ARRAY:[J

.field public static final LONG_EMPTY_OBJ_ARRAY:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    new-array v0, v1, [J

    sput-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 26
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_OBJ_ARRAY:[Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 11
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 11
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static varargs debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 22
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
