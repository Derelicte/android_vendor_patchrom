.class Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public requestedBits:I

.field public rotation:I

.field public screenNail:Landroid/graphics/Bitmap;

.field public screenNailTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 653
    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
