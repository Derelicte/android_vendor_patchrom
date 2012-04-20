.class public Lcom/android/inputmethod/latin/DictionaryFactory;
.super Ljava/lang/Object;
.source "DictionaryFactory.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/inputmethod/latin/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createBinaryDictionary(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;
    .locals 13
    .parameter "context"
    .parameter "resId"
    .parameter "locale"

    .prologue
    .line 99
    const/4 v8, 0x0

    .line 101
    .local v8, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 102
    .local v11, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 103
    invoke-static {v11, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v12

    .line 104
    .local v12, savedLocale:Ljava/util/Locale;
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 105
    invoke-static {v11, v12}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 109
    .end local v12           #savedLocale:Ljava/util/Locale;
    :goto_0
    if-nez v8, :cond_2

    .line 110
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found the resource but it is compressed. resId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 111
    const/4 v0, 0x0

    .line 127
    if-eqz v8, :cond_0

    .line 129
    :try_start_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 132
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-object v0

    .line 107
    .restart local v11       #res:Landroid/content/res/Resources;
    :cond_1
    :try_start_2
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v8}, Lcom/android/inputmethod/latin/DictionaryFactory;->isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 127
    if-eqz v8, :cond_0

    .line 129
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    goto :goto_1

    .line 114
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 115
    .local v2, sourceDir:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v10, packagePath:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceDir is not a file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 119
    const/4 v0, 0x0

    .line 127
    if-eqz v8, :cond_0

    .line 129
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 130
    :catch_1
    move-exception v1

    goto :goto_1

    .line 121
    :cond_4
    :try_start_6
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 127
    if-eqz v8, :cond_0

    .line 129
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 130
    :catch_2
    move-exception v1

    goto :goto_1

    .line 123
    .end local v2           #sourceDir:Ljava/lang/String;
    .end local v10           #packagePath:Ljava/io/File;
    .end local v11           #res:Landroid/content/res/Resources;
    :catch_3
    move-exception v9

    .line 124
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_8
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find the resource. resId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 125
    const/4 v0, 0x0

    .line 127
    if-eqz v8, :cond_0

    .line 129
    :try_start_9
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 130
    :catch_4
    move-exception v1

    goto :goto_1

    .line 127
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 129
    :try_start_a
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 132
    :cond_5
    :goto_2
    throw v0

    .line 130
    .restart local v11       #res:Landroid/content/res/Resources;
    :catch_5
    move-exception v1

    goto/16 :goto_1

    .end local v11           #res:Landroid/content/res/Resources;
    :catch_6
    move-exception v1

    goto :goto_2
.end method

.method public static createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJ[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/Dictionary;
    .locals 8
    .parameter "context"
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"
    .parameter "flagArray"

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V

    .line 153
    :goto_0
    return-object v0

    .line 152
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the file. path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I)Lcom/android/inputmethod/latin/DictionaryCollection;
    .locals 1
    .parameter "context"
    .parameter "locale"
    .parameter "fallbackResId"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    return-object v0
.end method

.method public static createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;
    .locals 12
    .parameter "context"
    .parameter "locale"
    .parameter "fallbackResId"
    .parameter "flagArray"

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    sget-object v1, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    const-string v2, "No locale defined for dictionary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/inputmethod/latin/Dictionary;

    const/4 v3, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->createBinaryDictionary(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>([Lcom/android/inputmethod/latin/Dictionary;)V

    .line 71
    :goto_0
    return-object v1

    .line 55
    :cond_0
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v9, dictList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-static {p1, p0, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    .line 58
    .local v8, assetFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    if-eqz v8, :cond_2

    .line 59
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/AssetFileAddress;

    .line 60
    .local v10, f:Lcom/android/inputmethod/latin/AssetFileAddress;
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    iget-object v2, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mFilename:Ljava/lang/String;

    iget-wide v3, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mOffset:J

    iget-wide v5, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mLength:J

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V

    .line 62
    .local v0, binaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    .end local v0           #binaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    .end local v10           #f:Lcom/android/inputmethod/latin/AssetFileAddress;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    invoke-direct {v1, v9}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getDictionaryId(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/Long;
    .locals 9
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 185
    .local v3, saveLocale:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v2

    .line 186
    .local v2, resourceId:I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 187
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    const-wide/16 v7, 0x22

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 191
    .local v4, size:Ljava/lang/Long;
    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_1
    invoke-static {v1, v3}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 196
    return-object v4

    .line 187
    .end local v4           #size:Ljava/lang/Long;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 192
    .restart local v4       #size:Ljava/lang/Long;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected static isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 4
    .parameter "afd"

    .prologue
    .line 210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x22

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
