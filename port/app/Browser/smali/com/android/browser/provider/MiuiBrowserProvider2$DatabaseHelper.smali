.class final Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MiuiBrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/MiuiBrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;


# direct methods
.method public constructor <init>(Lcom/android/browser/provider/MiuiBrowserProvider2;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    .line 393
    const-string v0, "browser2.db"

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 394
    return-void
.end method

.method private addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 16
    .parameter "db"
    .parameter "parentId"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    invoke-virtual {v14}, Lcom/android/browser/provider/MiuiBrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 665
    .local v10, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v14

    if-eqz v14, :cond_4

    const v14, 0x7f080068

    :goto_0
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 667
    .local v2, bookmarks:[Ljava/lang/CharSequence;
    array-length v11, v2

    .line 668
    .local v11, size:I
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v14

    if-eqz v14, :cond_5

    const v14, 0x7f080059

    :goto_1
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 671
    .local v9, preloads:Landroid/content/res/TypedArray;
    :try_start_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, parent:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 673
    .local v7, now:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v11, :cond_6

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    invoke-virtual {v14}, Lcom/android/browser/provider/MiuiBrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v14

    add-int/lit8 v15, v5, 0x1

    aget-object v15, v2, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 676
    .local v1, bookmarkDestination:Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "INSERT INTO bookmarks (title, url, folder,parent,position,created) VALUES (\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v2, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "0,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ");"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 693
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "INSERT INTO quicklinks (url,title,position) VALUES (\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v2, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\',"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\',"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ");"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 703
    const/4 v14, 0x0

    invoke-virtual {v9, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 704
    .local v4, faviconId:I
    add-int/lit8 v14, v5, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v13

    .line 705
    .local v13, thumbId:I
    const/4 v12, 0x0

    .local v12, thumb:[B
    const/4 v3, 0x0

    .line 707
    .local v3, favicon:[B
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 711
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 714
    :goto_4
    if-nez v12, :cond_0

    if-eqz v3, :cond_3

    .line 715
    :cond_0
    :try_start_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 716
    .local v6, imageValues:Landroid/content/ContentValues;
    const-string v14, "url_key"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    if-eqz v3, :cond_1

    .line 718
    const-string v14, "favicon"

    invoke-virtual {v6, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 720
    :cond_1
    if-eqz v12, :cond_2

    .line 721
    const-string v14, "thumbnail"

    invoke-virtual {v6, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 723
    :cond_2
    const-string v14, "images"

    const-string v15, "favicon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 673
    .end local v6           #imageValues:Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_2

    .line 665
    .end local v1           #bookmarkDestination:Ljava/lang/CharSequence;
    .end local v2           #bookmarks:[Ljava/lang/CharSequence;
    .end local v3           #favicon:[B
    .end local v4           #faviconId:I
    .end local v5           #i:I
    .end local v7           #now:Ljava/lang/String;
    .end local v8           #parent:Ljava/lang/String;
    .end local v9           #preloads:Landroid/content/res/TypedArray;
    .end local v11           #size:I
    .end local v12           #thumb:[B
    .end local v13           #thumbId:I
    :cond_4
    const v14, 0x7f08006a

    goto/16 :goto_0

    .line 668
    .restart local v2       #bookmarks:[Ljava/lang/CharSequence;
    .restart local v11       #size:I
    :cond_5
    const v14, 0x7f080069

    goto/16 :goto_1

    .line 708
    .restart local v1       #bookmarkDestination:Ljava/lang/CharSequence;
    .restart local v3       #favicon:[B
    .restart local v4       #faviconId:I
    .restart local v5       #i:I
    .restart local v7       #now:Ljava/lang/String;
    .restart local v8       #parent:Ljava/lang/String;
    .restart local v9       #preloads:Landroid/content/res/TypedArray;
    .restart local v12       #thumb:[B
    .restart local v13       #thumbId:I
    :catch_0
    move-exception v14

    goto :goto_3

    .line 712
    :catch_1
    move-exception v14

    goto :goto_4

    .line 726
    .end local v1           #bookmarkDestination:Ljava/lang/CharSequence;
    .end local v3           #favicon:[B
    .end local v4           #faviconId:I
    .end local v5           #i:I
    .end local v7           #now:Ljava/lang/String;
    .end local v8           #parent:Ljava/lang/String;
    .end local v12           #thumb:[B
    .end local v13           #thumbId:I
    :catch_2
    move-exception v14

    .line 728
    :cond_6
    return-void
.end method

.method private createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const-wide/16 v4, 0x1

    const/4 v3, 0x1

    .line 646
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 650
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 651
    const-string v1, "sync3"

    const-string v2, "google_chrome_bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v1, "title"

    const-string v2, "Bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 654
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string v1, "folder"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 656
    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 657
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 659
    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 660
    return-void
.end method

.method private getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "cr"

    .prologue
    .line 752
    const-string v7, "android-google"

    .line 753
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 755
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 757
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 763
    :cond_0
    if-eqz v6, :cond_1

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 767
    :cond_1
    :goto_0
    return-object v7

    .line 760
    :catch_0
    move-exception v0

    .line 763
    if-eqz v6, :cond_1

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private readRaw(Landroid/content/res/Resources;I)[B
    .locals 5
    .parameter "res"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    if-nez p2, :cond_0

    .line 732
    const/4 v4, 0x0

    .line 745
    :goto_0
    return-object v4

    .line 734
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 736
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 737
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 739
    .local v1, buf:[B
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, read:I
    if-lez v3, :cond_1

    .line 740
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 745
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v3           #read:I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4

    .line 742
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v3       #read:I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 743
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 745
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "srcString"

    .prologue
    .line 771
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 772
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 774
    .local v5, lastCharLoc:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, client_id:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 777
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 778
    .local v0, c:C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_0

    .line 779
    invoke-interface {p2, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 780
    move v5, v2

    .line 782
    move v3, v2

    .local v3, j:I
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 783
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 784
    .local v4, k:C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_2

    .line 785
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p2, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 786
    .local v6, propertyKeyValue:Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 787
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 792
    move v2, v3

    .line 776
    .end local v3           #j:I
    .end local v4           #k:C
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    .restart local v3       #j:I
    .restart local v4       #k:C
    .restart local v6       #propertyKeyValue:Ljava/lang/String;
    :cond_1
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 782
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 798
    .end local v0           #c:C
    .end local v3           #j:I
    .end local v4           #k:C
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_4

    .line 800
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p2, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 802
    :cond_4
    return-object v7
.end method


# virtual methods
.method createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 595
    const-string v0, "CREATE VIEW IF NOT EXISTS v_accounts AS SELECT NULL AS account_name, NULL AS account_type, 1 AS root_id UNION ALL SELECT account_name, account_type, _id AS root_id FROM bookmarks WHERE sync3 = \"bookmark_bar\" AND deleted = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 476
    const-string v0, "CREATE VIEW IF NOT EXISTS v_omnibox_suggestions  AS   SELECT _id, url, title, 1 AS bookmark, 0 AS visits, 0 AS date  FROM bookmarks   WHERE deleted = 0 AND folder = 0   UNION ALL   SELECT _id, url, title, 0 AS bookmark, visits, date   FROM history   WHERE url NOT IN (SELECT url FROM bookmarks    WHERE deleted = 0 AND folder = 0)   ORDER BY bookmark DESC, visits DESC, date DESC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 480
    const-string v0, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,thumbnail BLOB NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method enableSync(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    const/4 v9, 0x1

    .line 487
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "key"

    const-string v8, "sync_enabled"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v7, "value"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    iget-object v7, p0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    #calls: Lcom/android/browser/provider/MiuiBrowserProvider2;->insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    invoke-static {v7, p1, v6}, Lcom/android/browser/provider/MiuiBrowserProvider2;->access$000(Lcom/android/browser/provider/MiuiBrowserProvider2;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    .line 492
    iget-object v7, p0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    invoke-virtual {v7}, Lcom/android/browser/provider/MiuiBrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "account"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 494
    .local v2, am:Landroid/accounts/AccountManager;
    if-nez v2, :cond_1

    .line 511
    :cond_0
    return-void

    .line 497
    :cond_1
    const-string v7, "com.google"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 498
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-eqz v7, :cond_0

    .line 501
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 502
    .local v0, account:Landroid/accounts/Account;
    const-string v7, "com.android.browser"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 505
    const-string v7, "com.android.browser"

    invoke-static {v0, v7, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 507
    const-string v7, "com.android.browser"

    invoke-static {v0, v7, v9}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 501
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method importFromBrowserProvider(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 16
    .parameter "db"

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    invoke-virtual {v3}, Lcom/android/browser/provider/MiuiBrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 515
    .local v10, context:Landroid/content/Context;
    const-string v3, "browser.db"

    invoke-virtual {v10, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 516
    .local v13, oldDbFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 517
    new-instance v11, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {v11, v10}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 519
    .local v11, helper:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    invoke-virtual {v11}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 520
    .local v1, oldDb:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 522
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 524
    .local v2, table:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "favicon"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "touch_icon"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "created"

    aput-object v5, v3, v4

    const-string v4, "bookmark!=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 533
    if-eqz v9, :cond_3

    .line 534
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 536
    .local v14, url:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .local v15, values:Landroid/content/ContentValues;
    const-string v3, "url"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "title"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v3, "created"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string v3, "position"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v3, "parent"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 544
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 545
    .local v12, imageValues:Landroid/content/ContentValues;
    const-string v3, "url_key"

    invoke-virtual {v12, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v3, "favicon"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 547
    const-string v3, "touch_icon"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 548
    const-string v3, "images"

    const-string v4, "thumbnail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 549
    const-string v3, "bookmarks"

    const-string v4, "dirty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 582
    .end local v2           #table:Ljava/lang/String;
    .end local v12           #imageValues:Landroid/content/ContentValues;
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 584
    invoke-virtual {v11}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->close()V

    throw v3

    .line 551
    .restart local v2       #table:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_3
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "visits"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "created"

    aput-object v5, v3, v4

    const-string v4, "visits > 0 OR bookmark = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 564
    if-eqz v9, :cond_6

    .line 565
    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 566
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .restart local v15       #values:Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 568
    .restart local v14       #url:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 570
    const-string v3, "url"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v3, "title"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v3, "visits"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    const-string v3, "date"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    const-string v3, "created"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    const-string v3, "history"

    const-string v4, "favicon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 577
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 580
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 584
    invoke-virtual {v11}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->close()V

    .line 586
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_8

    .line 587
    invoke-virtual {v13}, Ljava/io/File;->deleteOnExit()V

    .line 589
    :cond_8
    const/4 v3, 0x1

    .line 591
    .end local v1           #oldDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #table:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #helper:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    :goto_2
    return v3

    :cond_9
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 399
    const-string v0, "CREATE TABLE bookmarks(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT,folder INTEGER NOT NULL DEFAULT 0,parent INTEGER,position INTEGER NOT NULL,insert_after INTEGER,deleted INTEGER NOT NULL DEFAULT 0,account_name TEXT,account_type TEXT,sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,created INTEGER,modified INTEGER,dirty INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string v0, "CREATE TABLE history(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0,user_entered INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    const-string v0, "CREATE TABLE images (url_key TEXT UNIQUE NOT NULL,favicon BLOB,thumbnail BLOB,touch_icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    const-string v0, "CREATE INDEX imagesUrlIndex ON images(url_key)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    const-string v0, "CREATE TABLE searches (_id INTEGER PRIMARY KEY AUTOINCREMENT,search TEXT,date LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v0, "CREATE TABLE settings (key TEXT PRIMARY KEY,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    const-string v0, "CREATE TABLE quicklinks (_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL, title TEXT, position INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 465
    iget-object v0, p0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/MiuiBrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->importFromBrowserProvider(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 471
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->enableSync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 473
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 641
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 642
    iget-object v0, p0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/MiuiBrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 643
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 610
    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 613
    :cond_0
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_1

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 616
    :cond_1
    const/16 v0, 0x1e

    if-ge p2, v0, :cond_2

    .line 617
    const-string v0, "DROP VIEW IF EXISTS v_snapshots_combined"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    const-string v0, "DROP TABLE IF EXISTS snapshots"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 620
    :cond_2
    const/16 v0, 0x1c

    if-ge p2, v0, :cond_3

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->enableSync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 623
    :cond_3
    const/16 v0, 0x1b

    if-ge p2, v0, :cond_4

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 626
    :cond_4
    const/16 v0, 0x1a

    if-ge p2, v0, :cond_5

    .line 627
    const-string v0, "DROP VIEW IF EXISTS combined"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 629
    :cond_5
    const/16 v0, 0x19

    if-ge p2, v0, :cond_6

    .line 630
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    const-string v0, "DROP TABLE IF EXISTS searches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 633
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/MiuiBrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/MiuiBrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-virtual {v0, p1, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/MiuiBrowserProvider2$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 638
    :cond_6
    return-void
.end method
