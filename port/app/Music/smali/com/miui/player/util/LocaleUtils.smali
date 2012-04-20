.class public Lcom/miui/player/util/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/util/LocaleUtils$1;,
        Lcom/miui/player/util/LocaleUtils$NameSplitter;,
        Lcom/miui/player/util/LocaleUtils$ChineseLocaleUtils;,
        Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static sSingleton:Lcom/miui/player/util/LocaleUtils;


# instance fields
.field private mBase:Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;

.field private mLanguage:Ljava/lang/String;

.field private mUtils:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/util/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 117
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/util/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/util/LocaleUtils;->mUtils:Ljava/util/HashMap;

    .line 123
    new-instance v0, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;

    invoke-direct {v0, p0, v1}, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;-><init>(Lcom/miui/player/util/LocaleUtils;Lcom/miui/player/util/LocaleUtils$1;)V

    iput-object v0, p0, Lcom/miui/player/util/LocaleUtils;->mBase:Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;

    .line 128
    invoke-direct {p0, v1}, Lcom/miui/player/util/LocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 129
    return-void
.end method

.method private declared-synchronized get(Ljava/lang/Integer;)Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    .locals 3
    .parameter "nameStyle"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/player/util/LocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;

    .line 147
    .local v0, utils:Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 149
    new-instance v0, Lcom/miui/player/util/LocaleUtils$ChineseLocaleUtils;

    .end local v0           #utils:Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/player/util/LocaleUtils$ChineseLocaleUtils;-><init>(Lcom/miui/player/util/LocaleUtils;Lcom/miui/player/util/LocaleUtils$1;)V

    .line 150
    .restart local v0       #utils:Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    iget-object v1, p0, Lcom/miui/player/util/LocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/util/LocaleUtils;->mBase:Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #utils:Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getAdjustedStyle(I)I
    .locals 2
    .parameter "nameStyle"

    .prologue
    .line 174
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/miui/player/util/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/player/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/player/util/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/player/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const/4 p1, 0x3

    .line 178
    .end local p1
    :cond_0
    return p1
.end method

.method private getForSort(Ljava/lang/Integer;)Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;
    .locals 1
    .parameter "nameStyle"

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/player/util/LocaleUtils;->getAdjustedStyle(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/player/util/LocaleUtils;->get(Ljava/lang/Integer;)Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getIntance()Lcom/miui/player/util/LocaleUtils;
    .locals 2

    .prologue
    .line 167
    const-class v1, Lcom/miui/player/util/LocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/player/util/LocaleUtils;->sSingleton:Lcom/miui/player/util/LocaleUtils;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/miui/player/util/LocaleUtils;

    invoke-direct {v0}, Lcom/miui/player/util/LocaleUtils;-><init>()V

    sput-object v0, Lcom/miui/player/util/LocaleUtils;->sSingleton:Lcom/miui/player/util/LocaleUtils;

    .line 170
    :cond_0
    sget-object v0, Lcom/miui/player/util/LocaleUtils;->sSingleton:Lcom/miui/player/util/LocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "currentLocale"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "displayName"

    .prologue
    .line 140
    invoke-static {p1}, Lcom/miui/player/util/LocaleUtils$NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, nameStyle:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/player/util/LocaleUtils;->getForSort(Ljava/lang/Integer;)Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/player/util/LocaleUtils$LocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, s:Ljava/lang/String;
    return-object v1
.end method
