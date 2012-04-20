.class public abstract Lcom/miui/backup/BaseDescript;
.super Ljava/lang/Object;
.source "BaseDescript.java"


# instance fields
.field public mDevice:Ljava/lang/String;

.field public mMiuiVersion:Ljava/lang/String;

.field public mSize:Ljava/lang/String;

.field public mXmlFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/backup/BaseDescript;->mDevice:Ljava/lang/String;

    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/backup/BaseDescript;->mMiuiVersion:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serializer"
    .parameter "nodeName"
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p3, :cond_0

    .line 90
    const-string p3, ""

    .line 92
    :cond_0
    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    return-void
.end method

.method public read(Ljava/io/File;)Z
    .locals 10
    .parameter "descriptionFile"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v7

    .line 101
    :cond_1
    iput-object p1, p0, Lcom/miui/backup/BaseDescript;->mXmlFile:Ljava/io/File;

    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    .end local v1           #inputStream:Ljava/io/InputStream;
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 107
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 108
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v9, "UTF-8"

    invoke-interface {v5, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, type:I
    :goto_1
    if-eq v6, v8, :cond_2

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    .line 112
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1

    .line 115
    :cond_2
    const/4 v3, 0x0

    .line 117
    .local v3, nodeName:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v6

    .line 118
    if-ne v6, v8, :cond_5

    .line 137
    if-eqz v2, :cond_4

    .line 139
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    :goto_3
    move v7, v8

    .line 142
    goto :goto_0

    .line 121
    :cond_5
    const/4 v9, 0x3

    if-eq v6, v9, :cond_3

    .line 125
    const/4 v9, 0x4

    if-ne v6, v9, :cond_6

    .line 126
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, nodeValue:Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/miui/backup/BaseDescript;->readNode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_2

    .line 134
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #nodeName:Ljava/lang/String;
    .end local v4           #nodeValue:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catch_0
    move-exception v8

    move-object v1, v2

    .line 137
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :goto_4
    if-eqz v1, :cond_0

    .line 139
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v8

    goto :goto_0

    .line 129
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v0       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v3       #nodeName:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :cond_6
    :try_start_5
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v3

    goto :goto_2

    .line 135
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #nodeName:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :catch_2
    move-exception v8

    .line 137
    :goto_5
    if-eqz v1, :cond_0

    .line 139
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 140
    :catch_3
    move-exception v8

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v1, :cond_7

    .line 139
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 142
    :cond_7
    :goto_7
    throw v7

    .line 140
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v0       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v3       #nodeName:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #nodeName:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 137
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_6

    .line 135
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_6
    move-exception v8

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_5

    .line 134
    :catch_7
    move-exception v8

    goto :goto_4
.end method

.method public read(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter "baseDir"
    .parameter "fileName"

    .prologue
    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v0, descriptionFile:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/miui/backup/BaseDescript;->read(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method protected readNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nodeName"
    .parameter "nodeValue"

    .prologue
    .line 28
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iput-object p2, p0, Lcom/miui/backup/BaseDescript;->mDevice:Ljava/lang/String;

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v0, "miuiVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iput-object p2, p0, Lcom/miui/backup/BaseDescript;->mMiuiVersion:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p2, p0, Lcom/miui/backup/BaseDescript;->mSize:Ljava/lang/String;

    goto :goto_0
.end method

.method public write(Ljava/io/File;)V
    .locals 8
    .parameter "baseDir"

    .prologue
    .line 43
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 44
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v2, 0x0

    .line 45
    .local v2, fileWriter:Ljava/io/FileWriter;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 48
    .local v5, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 51
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    const-string v6, ""

    const-string v7, "MIUI-backup"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    const-string v6, "device"

    iget-object v7, p0, Lcom/miui/backup/BaseDescript;->mDevice:Ljava/lang/String;

    invoke-virtual {p0, v4, v6, v7}, Lcom/miui/backup/BaseDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v6, "miuiVersion"

    iget-object v7, p0, Lcom/miui/backup/BaseDescript;->mMiuiVersion:Ljava/lang/String;

    invoke-virtual {p0, v4, v6, v7}, Lcom/miui/backup/BaseDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v6, "size"

    iget-object v7, p0, Lcom/miui/backup/BaseDescript;->mSize:Ljava/lang/String;

    invoke-virtual {p0, v4, v6, v7}, Lcom/miui/backup/BaseDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v4}, Lcom/miui/backup/BaseDescript;->writeContent(Lorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, fileName:Ljava/lang/String;
    const-string v6, ""

    const-string v7, "MIUI-backup"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 68
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, description:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/backup/BaseDescript;->mXmlFile:Ljava/io/File;

    .line 70
    iget-object v6, p0, Lcom/miui/backup/BaseDescript;->mXmlFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 71
    new-instance v3, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/miui/backup/BaseDescript;->mXmlFile:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 72
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .local v3, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 78
    if-eqz v3, :cond_2

    .line 80
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 85
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 81
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v0       #description:Ljava/lang/String;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 82
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_0

    .line 74
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #fileName:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 78
    :goto_1
    if-eqz v2, :cond_0

    .line 80
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 81
    :catch_2
    move-exception v6

    goto :goto_0

    .line 75
    :catch_3
    move-exception v6

    .line 78
    :goto_2
    if-eqz v2, :cond_0

    .line 80
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 81
    :catch_4
    move-exception v6

    goto :goto_0

    .line 76
    :catch_5
    move-exception v6

    .line 78
    :goto_3
    if-eqz v2, :cond_0

    .line 80
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 81
    :catch_6
    move-exception v6

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_1

    .line 80
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 82
    :cond_1
    :goto_5
    throw v6

    .line 81
    :catch_7
    move-exception v7

    goto :goto_5

    .line 78
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v0       #description:Ljava/lang/String;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_4

    .line 76
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_3

    .line 75
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catch_9
    move-exception v6

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_2

    .line 74
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catch_a
    move-exception v6

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_1

    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :cond_2
    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_0
.end method

.method protected abstract writeContent(Lorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
