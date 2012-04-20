.class public Lcom/android/inputmethod/latin/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# static fields
.field private static final sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .parameter "localeStr"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v2, 0x0

    .line 202
    :goto_0
    return-object v2

    .line 187
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 188
    :try_start_0
    sget-object v2, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    sget-object v2, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    monitor-exit v3

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 190
    :cond_1
    const/4 v1, 0x0

    .line 191
    .local v1, retval:Ljava/util/Locale;
    :try_start_1
    const-string v2, "_"

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, localeParams:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v5, :cond_4

    .line 193
    new-instance v1, Ljava/util/Locale;

    .end local v1           #retval:Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v1       #retval:Ljava/util/Locale;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 200
    sget-object v2, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_3
    monitor-exit v3

    move-object v2, v1

    goto :goto_0

    .line 194
    :cond_4
    array-length v2, v0

    if-ne v2, v6, :cond_5

    .line 195
    new-instance v1, Ljava/util/Locale;

    .end local v1           #retval:Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #retval:Ljava/util/Locale;
    goto :goto_1

    .line 196
    :cond_5
    array-length v2, v0

    if-ne v2, v7, :cond_2

    .line 197
    new-instance v1, Ljava/util/Locale;

    .end local v1           #retval:Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-direct {v1, v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #retval:Ljava/util/Locale;
    goto :goto_1
.end method

.method public static getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "referenceLocale"
    .parameter "testedLocale"

    .prologue
    const/4 v8, 0x2

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    const/16 v2, 0xa

    goto :goto_0

    .line 112
    :cond_2
    if-nez p1, :cond_3

    move v2, v3

    goto :goto_0

    .line 113
    :cond_3
    const-string v5, "_"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, referenceParams:[Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, testedParams:[Ljava/lang/String;
    aget-object v5, v0, v3

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    goto :goto_0

    .line 117
    :cond_4
    array-length v5, v0

    packed-switch v5, :pswitch_data_0

    move v2, v3

    .line 136
    goto :goto_0

    .line 119
    :pswitch_0
    array-length v3, v1

    if-eq v7, v3, :cond_0

    const/16 v2, 0xf

    goto :goto_0

    .line 121
    :pswitch_1
    array-length v3, v1

    if-ne v7, v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 122
    :cond_5
    aget-object v3, v0, v7

    aget-object v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v4

    .line 123
    goto :goto_0

    .line 124
    :cond_6
    array-length v3, v1

    if-ne v4, v3, :cond_0

    const/16 v2, 0x14

    goto :goto_0

    .line 127
    :pswitch_2
    array-length v3, v1

    if-ne v7, v3, :cond_7

    move v2, v4

    goto :goto_0

    .line 128
    :cond_7
    aget-object v3, v0, v7

    aget-object v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v2, v4

    .line 129
    goto :goto_0

    .line 130
    :cond_8
    array-length v3, v1

    if-ne v8, v3, :cond_9

    const/4 v2, 0x6

    goto :goto_0

    .line 131
    :cond_9
    aget-object v3, v0, v8

    aget-object v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const/4 v2, 0x6

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isMatch(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 161
    const/16 v0, 0xa

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3
    .parameter "res"
    .parameter "newLocale"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 173
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 174
    .local v1, saveLocale:Ljava/util/Locale;
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 175
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 176
    return-object v1
.end method
