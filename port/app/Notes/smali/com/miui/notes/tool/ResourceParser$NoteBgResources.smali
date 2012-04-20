.class public Lcom/miui/notes/tool/ResourceParser$NoteBgResources;
.super Ljava/lang/Object;
.source "ResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/tool/ResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteBgResources"
.end annotation


# static fields
.field private static final BG_EDIT_RESOURCES:[I

.field private static final BG_EDIT_TITLE_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->BG_EDIT_RESOURCES:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->BG_EDIT_TITLE_RESOURCES:[I

    return-void

    .line 26
    :array_0
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->BG_EDIT_RESOURCES:[I

    return-object v0
.end method

.method public static getNoteBgResource(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 43
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->BG_EDIT_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getNoteTitleBgResource(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 47
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->BG_EDIT_TITLE_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method
