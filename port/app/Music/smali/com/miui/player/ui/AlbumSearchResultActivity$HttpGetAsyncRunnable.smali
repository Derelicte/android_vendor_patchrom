.class abstract Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "HttpGetAsyncRunnable"
.end annotation


# instance fields
.field protected inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;->inputStream:Ljava/io/InputStream;

    .line 313
    return-void
.end method
