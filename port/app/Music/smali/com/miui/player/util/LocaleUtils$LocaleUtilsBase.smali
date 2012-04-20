.class Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleUtilsBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/util/LocaleUtils;


# direct methods
.method private constructor <init>(Lcom/miui/player/util/LocaleUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;->this$0:Lcom/miui/player/util/LocaleUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/util/LocaleUtils;Lcom/miui/player/util/LocaleUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;-><init>(Lcom/miui/player/util/LocaleUtils;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "displayName"

    .prologue
    .line 41
    return-object p1
.end method
