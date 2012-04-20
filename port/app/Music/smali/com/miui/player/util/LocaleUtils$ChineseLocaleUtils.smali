.class Lcom/miui/player/util/LocaleUtils$ChineseLocaleUtils;
.super Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChineseLocaleUtils"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/util/LocaleUtils;


# direct methods
.method private constructor <init>(Lcom/miui/player/util/LocaleUtils;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/player/util/LocaleUtils$ChineseLocaleUtils;->this$0:Lcom/miui/player/util/LocaleUtils;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;-><init>(Lcom/miui/player/util/LocaleUtils;Lcom/miui/player/util/LocaleUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/util/LocaleUtils;Lcom/miui/player/util/LocaleUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/player/util/LocaleUtils$ChineseLocaleUtils;-><init>(Lcom/miui/player/util/LocaleUtils;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "displayName"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x20

    .line 79
    invoke-static {}, Lcom/miui/player/util/HanziToPinyin;->getInstance()Lcom/miui/player/util/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/player/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 80
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/util/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/util/HanziToPinyin$Token;

    .line 85
    .local v2, token:Lcom/miui/player/util/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v2, Lcom/miui/player/util/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_2

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 87
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    iget-object v4, v2, Lcom/miui/player/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v4, v2, Lcom/miui/player/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 98
    iget-object v4, v2, Lcom/miui/player/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    iget-object v4, v2, Lcom/miui/player/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 104
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_3
    iget-object v4, v2, Lcom/miui/player/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    .end local v2           #token:Lcom/miui/player/util/HanziToPinyin$Token;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_5
    invoke-super {p0, p1}, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
