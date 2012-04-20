.class public Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;
.super Ljava/lang/Object;
.source "ResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/tool/ResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetBgResources"
.end annotation


# static fields
.field private static final BG_2X_RESOURCES:[I

.field private static final BG_4X_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;->BG_2X_RESOURCES:[I

    .line 127
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;->BG_4X_RESOURCES:[I

    return-void

    .line 115
    :array_0
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
    .end array-data

    .line 127
    :array_1
    .array-data 0x4
        0x41t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidget2xBgResource(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 124
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;->BG_2X_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getWidget4xBgResource(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 136
    sget-object v0, Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;->BG_4X_RESOURCES:[I

    aget v0, v0, p0

    return v0
.end method
