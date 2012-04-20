.class public Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistItem"
.end annotation


# instance fields
.field public final mIconResId:I

.field public final mItemId:I

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "itemId"
    .parameter "nameResId"
    .parameter "iconId"

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput p2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mItemId:I

    .line 427
    iput p4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mIconResId:I

    .line 428
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mName:Ljava/lang/String;

    .line 429
    return-void
.end method
