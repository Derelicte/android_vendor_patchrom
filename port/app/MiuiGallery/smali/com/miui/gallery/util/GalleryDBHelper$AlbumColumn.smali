.class public Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;
.super Lcom/miui/gallery/util/TableColumn;
.source "GalleryDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/GalleryDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumColumn"
.end annotation


# static fields
.field public static BUCKET_ID:I

.field public static BUCKET_PATH:I

.field public static COVER_PATH:I

.field public static ID:I

.field public static IS_HIDDEN:I

.field public static IS_HIDDEN_RECENT:I

.field public static IS_MANUALLY_RECENT:I

.field public static RECENT_VISIT_TIME:I

.field public static SORT_BY:I

.field public static VISIT_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->ID:I

    .line 79
    const/4 v0, 0x1

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->BUCKET_ID:I

    .line 80
    const/4 v0, 0x2

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->BUCKET_PATH:I

    .line 81
    const/4 v0, 0x3

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->RECENT_VISIT_TIME:I

    .line 82
    const/4 v0, 0x4

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->VISIT_COUNT:I

    .line 83
    const/4 v0, 0x5

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_HIDDEN_RECENT:I

    .line 84
    const/4 v0, 0x6

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_MANUALLY_RECENT:I

    .line 85
    const/4 v0, 0x7

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_HIDDEN:I

    .line 86
    const/16 v0, 0x8

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->SORT_BY:I

    .line 87
    const/16 v0, 0x9

    sput v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->COVER_PATH:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .parameter "index"
    .parameter "name"
    .parameter "isTextType"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/util/TableColumn;-><init>(ILjava/lang/String;Z)V

    .line 91
    return-void
.end method
