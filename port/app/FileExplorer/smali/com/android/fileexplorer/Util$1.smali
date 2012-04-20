.class final Lcom/android/fileexplorer/Util$1;
.super Ljava/util/HashSet;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 386
    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/Util$1;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/Util$1;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/Util$1;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/Util$1;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/Util$1;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/Util$1;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method
