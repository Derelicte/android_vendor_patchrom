.class public Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;
.super Ljava/lang/Object;
.source "ResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/tool/ResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteItemBgResources"
.end annotation


# static fields
.field private static final BG_FIRST_RESOURCES:[I

.field private static final BG_LAST_RESOURCES:[I

.field private static final BG_NORMAL_RESOURCES:[I

.field private static final BG_SINGLE_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_FIRST_RESOURCES:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_NORMAL_RESOURCES:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_LAST_RESOURCES:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_SINGLE_RESOURCES:[I

    return-void

    .line 61
    :array_0
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
    .end array-data

    .line 69
    :array_1
    .array-data 0x4
        0x2dt 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
    .end array-data

    .line 77
    :array_2
    .array-data 0x4
        0x2ct 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
    .end array-data

    .line 85
    :array_3
    .array-data 0x4
        0x2et 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderBgRes()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f02001e

    return v0
.end method

.method public static getNoteBgFirstRes(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 94
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_FIRST_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getNoteBgLastRes(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 98
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_LAST_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getNoteBgNormalRes(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 106
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_NORMAL_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getNoteBgSingleRes(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 102
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->BG_SINGLE_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method
