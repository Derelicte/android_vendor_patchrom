.class public Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;
.super Ljava/lang/Object;
.source "LocalAlbum.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteDBAlbum"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/LocalAlbum;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/LocalAlbum;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 342
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    #getter for: Lcom/miui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/miui/gallery/data/LocalAlbum;->access$300(Lcom/miui/gallery/data/LocalAlbum;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    #getter for: Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/gallery/data/LocalAlbum;->access$000(Lcom/miui/gallery/data/LocalAlbum;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    #getter for: Lcom/miui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/data/LocalAlbum;->access$100(Lcom/miui/gallery/data/LocalAlbum;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    #getter for: Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I
    invoke-static {v5}, Lcom/miui/gallery/data/LocalAlbum;->access$200(Lcom/miui/gallery/data/LocalAlbum;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 344
    return-void
.end method
