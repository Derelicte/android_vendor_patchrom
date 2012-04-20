.class public Lcom/android/fileexplorer/IntentBuilder;
.super Ljava/lang/Object;
.source "IntentBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSendFile(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 69
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v4, "*/*"

    .line 72
    .local v4, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 73
    .local v0, file:Lcom/android/fileexplorer/FileInfo;
    iget-boolean v9, v0, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-nez v9, :cond_0

    .line 76
    new-instance v1, Ljava/io/File;

    iget-object v9, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, fileIn:Ljava/io/File;
    iget-object v9, v0, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/fileexplorer/IntentBuilder;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 79
    .local v6, u:Landroid/net/Uri;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0           #file:Lcom/android/fileexplorer/FileInfo;
    .end local v1           #fileIn:Ljava/io/File;
    .end local v6           #u:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 83
    const/4 v3, 0x0

    .line 97
    :goto_1
    return-object v3

    .line 85
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_3

    .line 86
    .local v5, multiple:Z
    :goto_2
    new-instance v3, Landroid/content/Intent;

    if-eqz v5, :cond_4

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    :goto_3
    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, intent:Landroid/content/Intent;
    if-eqz v5, :cond_5

    .line 90
    const-string v8, "*/*"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #multiple:Z
    :cond_3
    move v5, v8

    .line 85
    goto :goto_2

    .line 86
    .restart local v5       #multiple:Z
    :cond_4
    const-string v9, "android.intent.action.SEND"

    goto :goto_3

    .line 93
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 101
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 102
    .local v0, dotPosition:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 103
    const-string v2, "*/*"

    .line 111
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :cond_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, ext:Ljava/lang/String;
    invoke-static {v1}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "mtz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const-string v2, "application/miui-mtz"

    .line 111
    :cond_2
    if-nez v2, :cond_0

    const-string v2, "*/*"

    goto :goto_0
.end method

.method public static viewFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/IntentBuilder;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, type:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "*/*"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 24
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f06004f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 33
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f060050

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const v5, 0x7f060051

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const v5, 0x7f060052

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const v5, 0x7f060053

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 38
    .local v2, menuItemArray:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/fileexplorer/IntentBuilder$1;

    invoke-direct {v4, p1, p0}, Lcom/android/fileexplorer/IntentBuilder$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
