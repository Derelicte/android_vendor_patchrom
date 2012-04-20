.class public Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;
.super Ljava/lang/Object;
.source "BinaryDictionaryFileDumper.java"


# static fields
.field private static final DICTIONARY_PROJECTION:[Ljava/lang/String;

.field private static final MAGIC_NUMBER:[B

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    return-void

    .line 52
    nop

    :array_0
    .array-data 0x1
        0x78t
        0xb1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .locals 27
    .parameter "id"
    .parameter "locale"
    .parameter "resolver"
    .parameter "context"

    .prologue
    .line 126
    const/4 v5, 0x0

    .line 127
    .local v5, COMPRESSED_CRYPTED_COMPRESSED:I
    const/4 v7, 0x1

    .line 128
    .local v7, CRYPTED_COMPRESSED:I
    const/4 v4, 0x2

    .line 129
    .local v4, COMPRESSED_CRYPTED:I
    const/4 v6, 0x3

    .line 130
    .local v6, COMPRESSED_ONLY:I
    const/4 v8, 0x4

    .line 131
    .local v8, CRYPTED_ONLY:I
    const/4 v11, 0x5

    .line 132
    .local v11, NONE:I
    const/4 v10, 0x0

    .line 133
    .local v10, MODE_MIN:I
    const/4 v9, 0x5

    .line 135
    .local v9, MODE_MAX:I
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 136
    .local v22, wordListUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 138
    .local v19, outputFileName:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, mode:I
    :goto_0
    const/16 v23, 0x5

    move/from16 v0, v23

    if-gt v15, v0, :cond_a

    .line 139
    const/16 v16, 0x0

    .line 140
    .local v16, originalSourceStream:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 141
    .local v14, inputStream:Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 142
    .local v17, outputFile:Ljava/io/File;
    const/16 v20, 0x0

    .line 143
    .local v20, outputStream:Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 146
    .local v12, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v12

    .line 148
    if-nez v12, :cond_2

    const/16 v23, 0x0

    .line 200
    if-eqz v12, :cond_0

    :try_start_1
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :cond_0
    :goto_1
    if-eqz v20, :cond_1

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .end local v12           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .end local v16           #originalSourceStream:Ljava/io/InputStream;
    .end local v17           #outputFile:Ljava/io/File;
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return-object v23

    .line 201
    .restart local v12       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v14       #inputStream:Ljava/io/InputStream;
    .restart local v16       #originalSourceStream:Ljava/io/InputStream;
    .restart local v17       #outputFile:Ljava/io/File;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v13

    .line 202
    .local v13, e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v13           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 207
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a file : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    .end local v13           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v16

    .line 151
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 152
    .end local v17           #outputFile:Ljava/io/File;
    .local v18, outputFile:Ljava/io/File;
    :try_start_4
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 154
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    .local v21, outputStream:Ljava/io/FileOutputStream;
    packed-switch v15, :pswitch_data_0

    .line 179
    :goto_3
    :try_start_5
    new-instance v23, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V

    .line 180
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    if-gtz v23, :cond_3

    .line 181
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v24, "Could not have the dictionary pack delete a word list"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_3
    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move-result-object v23

    .line 200
    if-eqz v12, :cond_4

    :try_start_6
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 205
    :cond_4
    :goto_4
    if-eqz v21, :cond_1

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 206
    :catch_2
    move-exception v13

    .line 207
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a file : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 156
    .end local v13           #e:Ljava/lang/Exception;
    :pswitch_0
    :try_start_8
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 160
    goto :goto_3

    .line 162
    :pswitch_1
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 164
    goto :goto_3

    .line 166
    :pswitch_2
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 168
    goto :goto_3

    .line 170
    :pswitch_3
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 171
    goto :goto_3

    .line 173
    :pswitch_4
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-result-object v14

    .line 174
    goto :goto_3

    .line 176
    :pswitch_5
    move-object/from16 v14, v16

    goto :goto_3

    .line 201
    :catch_3
    move-exception v13

    .line 202
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 185
    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #outputFile:Ljava/io/File;
    .end local v21           #outputStream:Ljava/io/FileOutputStream;
    .restart local v17       #outputFile:Ljava/io/File;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v13

    .line 189
    .restart local v13       #e:Ljava/lang/Exception;
    :goto_5
    if-eqz v17, :cond_5

    .line 193
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 200
    :cond_5
    if-eqz v12, :cond_6

    :try_start_a
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 205
    :cond_6
    :goto_6
    if-eqz v20, :cond_7

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 138
    :cond_7
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 201
    :catch_5
    move-exception v13

    .line 202
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 206
    :catch_6
    move-exception v13

    .line 207
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception while closing a file : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 198
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    .line 200
    :goto_8
    if-eqz v12, :cond_8

    :try_start_c
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 205
    :cond_8
    :goto_9
    if-eqz v20, :cond_9

    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 208
    :cond_9
    :goto_a
    throw v23

    .line 201
    :catch_7
    move-exception v13

    .line 202
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 206
    .end local v13           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v13

    .line 207
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a file : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 214
    .end local v12           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .end local v16           #originalSourceStream:Ljava/io/InputStream;
    .end local v17           #outputFile:Ljava/io/File;
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    :cond_a
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v24, "Could not copy a word list. Will not be able to use it."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    if-gtz v23, :cond_b

    .line 218
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v24, "In addition, we were unable to delete it."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 198
    .restart local v12       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v14       #inputStream:Ljava/io/InputStream;
    .restart local v16       #originalSourceStream:Ljava/io/InputStream;
    .restart local v18       #outputFile:Ljava/io/File;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v23

    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto :goto_8

    .end local v17           #outputFile:Ljava/io/File;
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    .restart local v18       #outputFile:Ljava/io/File;
    .restart local v21       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v23

    move-object/from16 v20, v21

    .end local v21           #outputStream:Ljava/io/FileOutputStream;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto :goto_8

    .line 185
    .end local v17           #outputFile:Ljava/io/File;
    .restart local v18       #outputFile:Ljava/io/File;
    :catch_9
    move-exception v13

    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto/16 :goto_5

    .end local v17           #outputFile:Ljava/io/File;
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    .restart local v18       #outputFile:Ljava/io/File;
    .restart local v21       #outputStream:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v13

    move-object/from16 v20, v21

    .end local v21           #outputStream:Ljava/io/FileOutputStream;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto/16 :goto_5

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "locale"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 236
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 237
    .local v4, idList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, fileAddressList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/WordListInfo;

    .line 239
    .local v3, id:Lcom/android/inputmethod/latin/WordListInfo;
    iget-object v6, v3, Lcom/android/inputmethod/latin/WordListInfo;->mId:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/inputmethod/latin/WordListInfo;->mLocale:Ljava/lang/String;

    invoke-static {v6, v7, v5, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v0

    .line 240
    .local v0, afd:Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v0           #afd:Lcom/android/inputmethod/latin/AssetFileAddress;
    .end local v3           #id:Lcom/android/inputmethod/latin/WordListInfo;
    :cond_1
    return-object v1
.end method

.method private static checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 260
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    array-length v4, v4

    new-array v1, v4, [B

    .line 261
    .local v1, magicNumberBuffer:[B
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    array-length v4, v4

    invoke-virtual {p0, v1, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 262
    .local v3, readMagicNumberSize:I
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 263
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Less bytes to read than the magic number length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    :cond_0
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Wrong magic number for downloaded file"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_1
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    invoke-virtual {p1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 271
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 272
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, readBytes:I
    :goto_0
    if-ltz v2, :cond_2

    .line 273
    invoke-virtual {p1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 272
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    return-void
.end method

.method private static getProviderUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "path"

    .prologue
    .line 64
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.inputmethod.latin.dictionarypack"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "locale"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/WordListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    .local v1, dictionaryPackUri:Landroid/net/Uri;
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 99
    :goto_0
    return-object v8

    .line 80
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 86
    :cond_2
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, wordListId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, wordListLocale:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    .end local v9           #wordListId:Ljava/lang/String;
    .end local v10           #wordListLocale:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 98
    .local v7, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception communicating with the dictionary pack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 91
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    .restart local v9       #wordListId:Ljava/lang/String;
    .restart local v10       #wordListLocale:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v2, Lcom/android/inputmethod/latin/WordListInfo;

    invoke-direct {v2, v9, v10}, Lcom/android/inputmethod/latin/WordListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 110
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v2, "Could not find a word list from the dictionary provider."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method
