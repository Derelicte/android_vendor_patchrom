.class Lcom/android/inputmethod/latin/BinaryDictionaryGetter;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    }
.end annotation


# static fields
.field private static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, relativeDirectoryName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, absoluteDirectoryName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create the directory for locale"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-object v0
.end method

.method public static getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "id"
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 209
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;
    .locals 13
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 221
    invoke-static {p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v5

    .line 222
    .local v5, directoryList:[Ljava/io/File;
    if-nez v5, :cond_0

    sget-object v12, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 237
    :goto_0
    return-object v12

    .line 223
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, cacheFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v0           #arr$:[Ljava/io/File;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v4, v0, v7

    .line 225
    .local v4, directory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2

    .line 224
    .end local v7           #i$:I
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .restart local v6       #i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, dirLocale:Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/android/inputmethod/latin/LocaleUtils;->getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/inputmethod/latin/LocaleUtils;->isMatch(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 228
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 229
    .local v11, wordLists:[Ljava/io/File;
    if-eqz v11, :cond_1

    .line 230
    move-object v1, v11

    .local v1, arr$:[Ljava/io/File;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v9, :cond_1

    aget-object v10, v1, v6

    .line 231
    .local v10, wordList:Ljava/io/File;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 236
    .end local v1           #arr$:[Ljava/io/File;
    .end local v3           #dirLocale:Ljava/lang/String;
    .end local v4           #directory:Ljava/io/File;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v10           #wordList:Ljava/io/File;
    .end local v11           #wordLists:[Ljava/io/File;
    .restart local v7       #i$:I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    goto :goto_0

    .line 237
    :cond_4
    sget-object v12, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/io/File;

    goto :goto_0
.end method

.method public static getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;I)Ljava/util/List;
    .locals 13
    .parameter "locale"
    .parameter "context"
    .parameter "fallbackResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;

    .line 274
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    .line 276
    .local v1, cachedWordLists:[Ljava/io/File;
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getMainDictId(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, mainDictId:Ljava/lang/String;
    new-instance v2, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;

    invoke-direct {v2, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;-><init>(Landroid/content/Context;)V

    .line 280
    .local v2, dictPackSettings:Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    const/4 v6, 0x0

    .line 281
    .local v6, foundMainDict:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v5, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v3, v0, v7

    .line 284
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, wordListId:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 286
    const/4 v6, 0x1

    .line 288
    :cond_0
    invoke-virtual {v2, v10}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 283
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_2
    sget-object v11, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    const-string v12, "Found a cached dictionary file but cannot read it"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    .end local v3           #f:Ljava/io/File;
    .end local v10           #wordListId:Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {v2, v9}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 297
    invoke-static {p1, p2, p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->loadFallbackResource(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v4

    .line 299
    .local v4, fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v4, :cond_4

    .line 300
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v4           #fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    :cond_4
    return-object v5
.end method

.method private static getMainDictId(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 252
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dicts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fname"

    .prologue
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 97
    .local v0, codePoint:I
    const/16 v4, 0x25

    if-eq v4, v0, :cond_0

    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 95
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x7

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, encodedCodePoint:I
    add-int/lit8 v2, v2, 0x6

    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 105
    .end local v0           #codePoint:I
    .end local v1           #encodedCodePoint:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static isFileNameCharacter(I)Z
    .locals 2
    .parameter "codePoint"

    .prologue
    const/4 v0, 0x1

    .line 60
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    .line 62
    :cond_2
    const/16 v1, 0x61

    if-lt p0, v1, :cond_3

    const/16 v1, 0x7a

    if-le p0, v1, :cond_0

    .line 63
    :cond_3
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadFallbackResource(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .locals 8
    .parameter "context"
    .parameter "fallbackResId"
    .parameter "locale"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 157
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 158
    .local v2, savedLocale:Ljava/util/Locale;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 159
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 161
    if-nez v0, :cond_0

    .line 162
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found the resource but cannot read it. Is it compressed? resId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v3, 0x0

    .line 166
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v3

    goto :goto_0
.end method

.method private static replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 80
    .local v0, codePoint:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->isFileNameCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 78
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/4 v3, 0x0

    check-cast v3, Ljava/util/Locale;

    const-string v4, "%%%1$06x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    .end local v0           #codePoint:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
