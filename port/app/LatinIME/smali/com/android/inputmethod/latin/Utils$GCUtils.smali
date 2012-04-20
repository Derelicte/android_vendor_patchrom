.class public Lcom/android/inputmethod/latin/Utils$GCUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCUtils"
.end annotation


# static fields
.field private static final GC_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/inputmethod/latin/Utils$GCUtils;


# instance fields
.field private mGCTryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/android/inputmethod/latin/Utils$GCUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils$GCUtils;->GC_TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/inputmethod/latin/Utils$GCUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$GCUtils;->sInstance:Lcom/android/inputmethod/latin/Utils$GCUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/inputmethod/latin/Utils$GCUtils;->sInstance:Lcom/android/inputmethod/latin/Utils$GCUtils;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    .line 93
    return-void
.end method

.method public tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 4
    .parameter "metaData"
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 96
    iget v2, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    if-nez v2, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 99
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 100
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :goto_0
    return v1

    .line 104
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v1, 0x1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/inputmethod/latin/Utils$GCUtils;->GC_TAG:Ljava/lang/String;

    const-string v3, "Sleep was interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
