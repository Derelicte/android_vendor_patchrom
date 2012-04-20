.class public Lcom/miui/home/launcher/gadget/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 5
    .parameter "outputStream"
    .parameter "inputStream"

    .prologue
    .line 151
    const/16 v0, 0x4000

    .line 152
    .local v0, BUFFER_SIZE:I
    const/16 v4, 0x4000

    new-array v1, v4, [B

    .line 153
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 155
    .local v2, byteread:I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 156
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v3

    .line 159
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "dstPath"
    .parameter "srcPath"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 121
    .local v3, outputStream:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 122
    .local v5, ret:Z
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v5

    .line 147
    .end local v5           #ret:Z
    .local v6, ret:I
    :goto_0
    return v6

    .line 126
    .end local v6           #ret:I
    .restart local v5       #ret:Z
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v7, src:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v1           #inputStream:Ljava/io/InputStream;
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 130
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .local v4, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v4, v2}, Lcom/miui/home/launcher/gadget/Utils;->copyFile(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 131
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 137
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :cond_1
    if-eqz v1, :cond_2

    .line 138
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_2
    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v7           #src:Ljava/io/File;
    :cond_3
    :goto_1
    move v6, v5

    .line 147
    .restart local v6       #ret:I
    goto :goto_0

    .line 143
    .end local v6           #ret:I
    .restart local v7       #src:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    .end local v7           #src:Ljava/io/File;
    :catch_1
    move-exception v8

    .line 137
    :goto_2
    if-eqz v1, :cond_4

    .line 138
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_4
    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 143
    :catch_2
    move-exception v0

    .line 144
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 137
    :goto_3
    if-eqz v1, :cond_5

    .line 138
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_5
    if-eqz v3, :cond_6

    .line 141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 145
    :cond_6
    :goto_4
    throw v8

    .line 143
    :catch_3
    move-exception v0

    .line 144
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v7       #src:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 133
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_4
    move-exception v8

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "dst"
    .parameter "zipPath"
    .parameter "entryName"
    .parameter "dftZip"

    .prologue
    const/4 v9, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    .local v5, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 81
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 82
    .local v8, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v8, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 83
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_0

    .line 84
    new-instance v8, Ljava/util/zip/ZipFile;

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    invoke-direct {v8, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v8, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 87
    :cond_0
    if-eqz v3, :cond_6

    .line 88
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v4, f:Ljava/io/File;
    invoke-virtual {v8, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 92
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v7, os:Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_1
    new-array v0, v10, [B

    .line 93
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 94
    .local v1, c:I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_3

    .line 95
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    .end local v0           #buf:[B
    .end local v1           #c:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 102
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    .end local v7           #os:Ljava/io/FileOutputStream;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-eqz v6, :cond_1

    .line 106
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 108
    :cond_1
    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 115
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return v9

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #c:I
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #f:Ljava/io/File;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    move-object v6, v7

    .line 98
    .end local v0           #buf:[B
    .end local v1           #c:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v9, 0x1

    .line 105
    if-eqz v6, :cond_5

    .line 106
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 108
    :cond_5
    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 111
    :catch_1
    move-exception v10

    goto :goto_2

    .line 105
    .end local v4           #f:Ljava/io/File;
    :cond_6
    if-eqz v6, :cond_7

    .line 106
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 108
    :cond_7
    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 111
    :catch_2
    move-exception v10

    goto :goto_2

    .line 104
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v9

    .line 105
    :goto_3
    if-eqz v6, :cond_8

    .line 106
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 108
    :cond_8
    if-eqz v5, :cond_9

    .line 109
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 112
    :cond_9
    :goto_4
    throw v9

    .line 111
    :catch_3
    move-exception v10

    goto :goto_4

    .line 104
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #f:Ljava/io/File;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 111
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_2

    .line 101
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public static getDisplayPixels(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 164
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 165
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 167
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 168
    .local v1, outSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 169
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    return v3
.end method

.method public static parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 9
    .parameter "zipPath"

    .prologue
    .line 40
    const/4 v5, 0x0

    .line 41
    .local v5, zip:Ljava/util/zip/ZipFile;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 43
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 45
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 46
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .local v6, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v7, "manifest.xml"

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 47
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 48
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 49
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    move-result-object v7

    .line 59
    if-eqz v4, :cond_0

    .line 61
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 66
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 68
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_1
    :goto_1
    move-object v5, v6

    .line 74
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :goto_2
    return-object v7

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v7, "com.miui.home.launcher.gadget.Utils"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    if-eqz v4, :cond_2

    .line 61
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 66
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 68
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 74
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    :goto_5
    const/4 v7, 0x0

    goto :goto_2

    .line 52
    :catch_1
    move-exception v3

    .line 53
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    :try_start_7
    const-string v7, "com.miui.home.launcher.gadget.Utils"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 59
    if-eqz v4, :cond_4

    .line 61
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 66
    :cond_4
    :goto_7
    if-eqz v5, :cond_3

    .line 68
    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 69
    :catch_2
    move-exception v7

    goto :goto_5

    .line 54
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v3

    .line 55
    .local v3, e:Lorg/xml/sax/SAXException;
    :goto_8
    :try_start_a
    const-string v7, "com.miui.home.launcher.gadget.Utils"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 59
    if-eqz v4, :cond_5

    .line 61
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 66
    :cond_5
    :goto_9
    if-eqz v5, :cond_3

    .line 68
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_5

    .line 69
    :catch_4
    move-exception v7

    goto :goto_5

    .line 56
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_5
    move-exception v3

    .line 57
    .local v3, e:Ljava/lang/Exception;
    :goto_a
    :try_start_d
    const-string v7, "com.miui.home.launcher.gadget.Utils"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 59
    if-eqz v4, :cond_6

    .line 61
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 66
    :cond_6
    :goto_b
    if-eqz v5, :cond_3

    .line 68
    :try_start_f
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_5

    .line 69
    :catch_6
    move-exception v7

    goto :goto_5

    .line 59
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_c
    if-eqz v4, :cond_7

    .line 61
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 66
    :cond_7
    :goto_d
    if-eqz v5, :cond_8

    .line 68
    :try_start_11
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 70
    :cond_8
    :goto_e
    throw v7

    .line 62
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v8

    goto :goto_0

    .line 69
    :catch_8
    move-exception v8

    goto :goto_1

    .line 62
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .local v3, e:Ljava/io/IOException;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v7

    goto :goto_4

    .line 69
    :catch_a
    move-exception v7

    goto :goto_5

    .line 62
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_b
    move-exception v7

    goto :goto_7

    .local v3, e:Lorg/xml/sax/SAXException;
    :catch_c
    move-exception v7

    goto :goto_9

    .local v3, e:Ljava/lang/Exception;
    :catch_d
    move-exception v7

    goto :goto_b

    .end local v3           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v8

    goto :goto_d

    .line 69
    :catch_f
    move-exception v8

    goto :goto_e

    .line 59
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_c

    .line 56
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_10
    move-exception v3

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .line 54
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_11
    move-exception v3

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .line 52
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_12
    move-exception v3

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 50
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_13
    move-exception v3

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_3
.end method
