.class public Lcom/miui/gallery/app/StateManager$PhotoPageData;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoPageData"
.end annotation


# instance fields
.field fileBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

.field fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

.field indexHint:I

.field final synthetic this$0:Lcom/miui/gallery/app/StateManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/StateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/app/StateManager$PhotoPageData;->this$0:Lcom/miui/gallery/app/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
