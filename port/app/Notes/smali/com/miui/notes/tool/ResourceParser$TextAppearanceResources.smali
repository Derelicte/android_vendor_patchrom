.class public Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;
.super Ljava/lang/Object;
.source "ResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/tool/ResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAppearanceResources"
.end annotation


# static fields
.field private static final TEXTAPPEARANCE_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->TEXTAPPEARANCE_RESOURCES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0xbt 0x7ft
        0x2t 0x0t 0xbt 0x7ft
        0x1t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourcesSize()I
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->TEXTAPPEARANCE_RESOURCES:[I

    array-length v0, v0

    return v0
.end method

.method public static getTexAppearanceResource(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 154
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->TEXTAPPEARANCE_RESOURCES:[I

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->TEXTAPPEARANCE_RESOURCES:[I

    aget v0, v0, p0

    goto :goto_0
.end method
