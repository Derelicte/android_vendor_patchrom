.class public Lcom/android/browser/MiuiBrowserBookmarksPage;
.super Lcom/android/browser/BrowserBookmarksPage;
.source "MiuiBrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiOpenAllInBackgroundTabsTask;,
        Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;
    }
.end annotation


# static fields
.field public static final BACKUP_PATH:Ljava/lang/String;

.field public static final EXTERNAL_STORAGE_DIR:Ljava/lang/String;

.field public static final STORAGE_ROOT_DIR:Ljava/lang/String;


# instance fields
.field mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiBrowserBookmarksPage;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/browser/MiuiBrowserBookmarksPage;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MIUI/browser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiBrowserBookmarksPage;->STORAGE_ROOT_DIR:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/browser/MiuiBrowserBookmarksPage;->STORAGE_ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "backups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiBrowserBookmarksPage;->BACKUP_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;-><init>()V

    return-void
.end method

.method private exportToFolder(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/browser/BookmarkImportExport;->exportBookmarks(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "%s (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c016a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private importFromFile(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const v3, 0x7f0c016f

    const/4 v4, 0x0

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 347
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 312
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, pDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 315
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 316
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 318
    new-instance v2, Lcom/android/browser/MiuiBrowserBookmarksPage$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/browser/MiuiBrowserBookmarksPage$1;-><init>(Lcom/android/browser/MiuiBrowserBookmarksPage;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private open(Lcom/android/browser/BrowserBookmarksAdapter;IZ)V
    .locals 9
    .parameter "adapter"
    .parameter "position"
    .parameter "background"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 195
    iget-object v4, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    if-nez v4, :cond_0

    .line 205
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    .local v0, c:Landroid/database/Cursor;
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v3, v5

    .line 199
    .local v3, isFolder:Z
    :goto_1
    if-eqz v3, :cond_2

    .line 200
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 201
    .local v1, id:J
    new-instance v4, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiOpenAllInBackgroundTabsTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiOpenAllInBackgroundTabsTask;-><init>(Lcom/android/browser/MiuiBrowserBookmarksPage;J)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiOpenAllInBackgroundTabsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .end local v1           #id:J
    .end local v3           #isFolder:Z
    :cond_1
    move v3, v6

    .line 198
    goto :goto_1

    .line 203
    .restart local v3       #isFolder:Z
    :cond_2
    iget-object v7, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    if-nez p3, :cond_3

    move v4, v5

    :goto_2
    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-interface {v7, v4, v5}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openInNewTab(Z[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method private showExportFilesAlertDialog()V
    .locals 8

    .prologue
    .line 350
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 352
    const v5, 0x1040014

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0169

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0012

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 371
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 360
    .local v3, rootDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/browser/MiuiBrowserBookmarksPage;->BACKUP_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, defaultFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 365
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 367
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 368
    const-string v5, "root_directory"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v5, "pick_folder"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/android/browser/MiuiBrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showImportFilesAlertDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    const v5, 0x1040014

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0169

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0012

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 297
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 282
    .local v3, rootDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/browser/MiuiBrowserBookmarksPage;->BACKUP_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, defaultFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 284
    move-object v1, v3

    .line 289
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 291
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 292
    const-string v5, "root_directory"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v5, "ext_filter"

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "html"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v2, v9}, Lcom/android/browser/MiuiBrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public handleContextItem(III)Z
    .locals 4
    .parameter "itemId"
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-virtual {p0, p2}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    .line 177
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    sparse-switch p1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksPage;->handleContextItem(III)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 179
    :sswitch_0
    iget-object v2, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    invoke-virtual {v0, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :sswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, p3, v2}, Lcom/android/browser/MiuiBrowserBookmarksPage;->open(Lcom/android/browser/BrowserBookmarksAdapter;IZ)V

    goto :goto_0

    .line 187
    :sswitch_2
    invoke-direct {p0, v0, p3, v1}, Lcom/android/browser/MiuiBrowserBookmarksPage;->open(Lcom/android/browser/BrowserBookmarksAdapter;IZ)V

    goto :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x7f0d0024 -> :sswitch_0
        0x7f0d0025 -> :sswitch_1
        0x7f0d00b3 -> :sswitch_2
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 258
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 259
    if-ne p2, v2, :cond_0

    .line 260
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->exportToFolder(Ljava/lang/String;)V

    .line 269
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 264
    if-ne p2, v2, :cond_0

    .line 265
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 266
    .restart local v0       #path:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->importFromFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 153
    invoke-virtual {p0, p3}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    .line 154
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0, p4}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 155
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v8, 0x6

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 156
    .local v3, isFolder:Z
    :goto_0
    if-eqz v3, :cond_3

    .line 157
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, title:Ljava/lang/String;
    sget-object v8, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v8, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 160
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0, p3}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v1

    .line 161
    .local v1, crumbs:Lcom/android/browser/BreadCrumbView;
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1, v4, v5}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 164
    invoke-virtual {v1, v7}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 166
    :cond_0
    invoke-virtual {p0, p3, v5}, Lcom/android/browser/MiuiBrowserBookmarksPage;->loadFolder(ILandroid/net/Uri;)V

    .line 171
    .end local v1           #crumbs:Lcom/android/browser/BreadCrumbView;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return v6

    .end local v3           #isFolder:Z
    :cond_2
    move v3, v7

    .line 155
    goto :goto_0

    .line 167
    .restart local v3       #isFolder:Z
    :cond_3
    iget-object v7, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    invoke-static {v2}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->onCreate(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/browser/BrowserActivity;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getController()Lcom/android/browser/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    .line 127
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;-><init>(Landroid/content/Context;)V

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/browser/BrowserActivity;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x1

    const v1, 0x7f0c0171

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 242
    const/4 v0, 0x2

    const v1, 0x7f0c0172

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 244
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 132
    const v1, 0x7f04000b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mRoot:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d0023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/view/MiuiBookmarkExpandableView;

    iput-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    .line 136
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const v2, 0x7f04000a

    invoke-virtual {v1, v2}, Lcom/android/browser/view/BookmarkExpandableView;->setColumnWidthFromLayout(I)V

    .line 138
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setBreadcrumbController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 139
    iget-boolean v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mEnableContextMenu:Z

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiBrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 140
    new-instance v1, Lcom/android/browser/BookmarkDragHandler;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mDragController:Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;

    iget-object v4, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v4}, Lcom/android/browser/view/BookmarkExpandableView;->getDragAdapter()Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/BookmarkDragHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;Lcom/android/browser/BookmarkDragHandler$BookmarkDragAdapter;)V

    iput-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;

    .line 144
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 145
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 147
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 12
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v10

    if-ne v10, v9, :cond_6

    .line 81
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    .line 82
    .local v7, lm:Landroid/app/LoaderManager;
    const/16 v6, 0x64

    .line 86
    .local v6, id:I
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-le v10, v9, :cond_1

    move v5, v8

    .line 87
    .local v5, force_expand:Z
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 88
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, accountName:Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, accountType:Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v3, args:Landroid/os/Bundle;
    const-string v10, "account_name"

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v10, "account_type"

    invoke-virtual {v3, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Lcom/android/browser/MiuiBrowserBookmarksAdapter;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, v10, v9}, Lcom/android/browser/MiuiBrowserBookmarksAdapter;-><init>(Landroid/content/Context;I)V

    .line 95
    .local v2, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget-object v10, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v4, 0x1

    .line 98
    .local v4, expand:Z
    :try_start_0
    iget-object v11, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    move-object v10, v0

    :goto_1
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 101
    :goto_2
    iget-object v11, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    if-nez v5, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    move v10, v9

    :goto_3
    invoke-virtual {v11, v0, v2, v10}, Lcom/android/browser/view/BookmarkExpandableView;->addAccount(Ljava/lang/String;Lcom/android/browser/BrowserBookmarksAdapter;Z)V

    .line 102
    invoke-virtual {v7, v6, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 103
    add-int/lit8 v6, v6, 0x1

    .line 104
    goto :goto_0

    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    .end local v3           #args:Landroid/os/Bundle;
    .end local v4           #expand:Z
    .end local v5           #force_expand:Z
    :cond_1
    move v5, v9

    .line 86
    goto :goto_0

    .line 98
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v2       #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    .restart local v3       #args:Landroid/os/Bundle;
    .restart local v4       #expand:Z
    .restart local v5       #force_expand:Z
    :cond_2
    :try_start_1
    const-string v10, "local"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move v10, v8

    .line 101
    goto :goto_3

    .line 112
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    .end local v3           #args:Landroid/os/Bundle;
    .end local v4           #expand:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 117
    .end local v5           #force_expand:Z
    .end local v6           #id:I
    .end local v7           #lm:Landroid/app/LoaderManager;
    :cond_5
    :goto_4
    return-void

    .line 113
    :cond_6
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_5

    .line 114
    iget-object v8, p0, Lcom/android/browser/MiuiBrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 115
    .restart local v2       #adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v2, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_4

    .line 100
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v3       #args:Landroid/os/Bundle;
    .restart local v4       #expand:Z
    .restart local v5       #force_expand:Z
    .restart local v6       #id:I
    .restart local v7       #lm:Landroid/app/LoaderManager;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/MiuiBrowserBookmarksPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->showImportFilesAlertDialog()V

    .line 253
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 250
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->showExportFilesAlertDialog()V

    goto :goto_0
.end method
