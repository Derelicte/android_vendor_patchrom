.class public Lcom/android/quicksearchbox/PackageIconLoader;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/IconLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/PackageIconLoader$1;,
        Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;,
        Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private mPackageContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"
    .parameter "uiThread"
    .parameter "iconLoaderExecutor"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mUiThread:Landroid/os/Handler;

    .line 75
    iput-object p4, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/PackageIconLoader;)Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/quicksearchbox/PackageIconLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/quicksearchbox/PackageIconLoader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/quicksearchbox/PackageIconLoader;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/PackageIconLoader;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private ensurePackageContext()Z
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "QSB.PackageIconLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, scheme:Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/PackageIconLoader;->getResourceId(Landroid/net/Uri;)Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 149
    .local v2, r:Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    :try_start_1
    iget-object v5, v2, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 171
    .end local v2           #r:Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 150
    .restart local v2       #r:Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .restart local v3       #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 151
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #r:Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 170
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "QSB.PackageIconLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 171
    goto :goto_0

    .line 155
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v3       #scheme:Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 156
    .local v4, stream:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 157
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 160
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 163
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 164
    :catch_2
    move-exception v0

    .line 165
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    const-string v7, "QSB.PackageIconLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 162
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 163
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 166
    :goto_1
    :try_start_8
    throw v5

    .line 164
    :catch_3
    move-exception v0

    .line 165
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v7, "QSB.PackageIconLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getResourceId(Landroid/net/Uri;)Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .locals 11
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, authority:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 190
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 193
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 198
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 199
    .local v5, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 200
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 194
    .end local v5           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 195
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get resources: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 202
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #r:Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 204
    .local v4, len:I
    if-ne v4, v10, :cond_2

    .line 206
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 215
    .local v3, id:I
    :goto_0
    if-nez v3, :cond_4

    .line 216
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No resource found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 207
    .end local v3           #id:I
    :catch_1
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Single path segment is not a resource ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 210
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 211
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #id:I
    goto :goto_0

    .line 213
    .end local v3           #id:I
    :cond_3
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than two path segments: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 218
    .restart local v3       #id:I
    :cond_4
    new-instance v7, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;-><init>(Lcom/android/quicksearchbox/PackageIconLoader;Lcom/android/quicksearchbox/PackageIconLoader$1;)V

    .line 219
    .local v7, res:Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;
    iput-object v6, v7, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 220
    iput v3, v7, Lcom/android/quicksearchbox/PackageIconLoader$OpenResourceIdResult;->id:I

    .line 221
    return-object v7
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 9
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/util/Now;

    invoke-direct {v0, v8}, Lcom/android/quicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-object v0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/android/quicksearchbox/PackageIconLoader;->ensurePackageContext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    new-instance v0, Lcom/android/quicksearchbox/util/Now;

    invoke-direct {v0, v8}, Lcom/android/quicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 105
    .local v3, resourceId:I
    iget-object v5, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/quicksearchbox/util/Now;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 107
    .end local v0           #drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #resourceId:I
    :catch_0
    move-exception v2

    .line 109
    .local v2, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 110
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "android.resource"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    new-instance v0, Lcom/android/quicksearchbox/util/Now;

    invoke-direct {p0, v4}, Lcom/android/quicksearchbox/PackageIconLoader;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/quicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .restart local v0       #drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 114
    .end local v0           #drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    :cond_3
    new-instance v0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;

    invoke-direct {v0, p0, v4}, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;-><init>(Lcom/android/quicksearchbox/PackageIconLoader;Landroid/net/Uri;)V

    .restart local v0       #drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 116
    .end local v0           #drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 118
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "QSB.PackageIconLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon resource not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/android/quicksearchbox/util/Now;

    invoke-direct {v0, v8}, Lcom/android/quicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .restart local v0       #drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "drawableId"

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/quicksearchbox/PackageIconLoader;->ensurePackageContext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, resourceId:I
    iget-object v2, p0, Lcom/android/quicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/quicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 132
    .end local v1           #resourceId:I
    :catch_0
    move-exception v0

    .line 133
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method
