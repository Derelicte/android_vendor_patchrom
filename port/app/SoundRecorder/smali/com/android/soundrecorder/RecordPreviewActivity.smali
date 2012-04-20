.class public Lcom/android/soundrecorder/RecordPreviewActivity;
.super Landroid/app/ListActivity;
.source "RecordPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lmiui/os/AsyncTaskObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Lmiui/os/AsyncTaskObserver",
        "<",
        "Ljava/lang/Void;",
        "Lmiui/app/resourcebrowser/resource/Resource;",
        "Ljava/util/List",
        "<",
        "Lmiui/app/resourcebrowser/resource/Resource;",
        ">;>;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

.field private mBackToRecFolder:Z

.field private mCallRecordView:Landroid/view/View;

.field private mHighlightFileName:Ljava/lang/String;

.field private mPreviewType:I

.field private mRecordPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/RecordPreviewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/RecordPreviewActivity;->showDeleteConfirmDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/RecordPreviewActivity;)Lcom/android/soundrecorder/RecordResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    return-object v0
.end method

.method private checkRecordFolder()V
    .locals 15

    .prologue
    const v14, 0x7f070016

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 300
    const/4 v7, 0x1

    .line 301
    .local v7, isEmpty:Z
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mRecordPath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, files:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 303
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v0, v6

    .line 304
    .local v2, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mRecordPath:Ljava/lang/String;

    invoke-direct {v1, v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/call_rec"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 307
    new-instance v4, Lcom/android/soundrecorder/RecordPreviewActivity$3;

    invoke-direct {v4, p0}, Lcom/android/soundrecorder/RecordPreviewActivity$3;-><init>(Lcom/android/soundrecorder/RecordPreviewActivity;)V

    .line 320
    .local v4, filter:Ljava/io/FileFilter;
    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    .line 321
    .local v9, recFiles:[Ljava/io/File;
    if-eqz v9, :cond_3

    array-length v10, v9

    if-lez v10, :cond_3

    .line 322
    const/4 v7, 0x0

    .line 337
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    .end local v4           #filter:Ljava/io/FileFilter;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v9           #recFiles:[Ljava/io/File;
    :cond_0
    :goto_1
    if-eqz v7, :cond_4

    .line 338
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/ListView;->setVisibility(I)V

    .line 339
    invoke-virtual {p0, v14}, Lcom/android/soundrecorder/RecordPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :goto_2
    return-void

    .line 327
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, fullPath:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".3gpp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".amr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 330
    :cond_2
    const/4 v7, 0x0

    .line 331
    goto :goto_1

    .line 303
    .end local v5           #fullPath:Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 341
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 342
    invoke-virtual {p0, v14}, Lcom/android/soundrecorder/RecordPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 266
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 267
    .local v0, dotPosition:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 268
    const-string v2, "*/*"

    .line 276
    :cond_0
    :goto_0
    return-object v2

    .line 270
    :cond_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, ext:Ljava/lang/String;
    invoke-static {v1}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "mtz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const-string v2, "application/miui-mtz"

    .line 276
    :cond_2
    if-nez v2, :cond_0

    const-string v2, "*/*"

    goto :goto_0
.end method

.method private init(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sound_recorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mRecordPath:Ljava/lang/String;

    .line 76
    iput v4, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mPreviewType:I

    .line 77
    iput-object v3, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mHighlightFileName:Ljava/lang/String;

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mBackToRecFolder:Z

    .line 80
    iget-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mCallRecordView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 81
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mCallRecordView:Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mCallRecordView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    if-eqz p1, :cond_2

    .line 86
    const-string v1, "record_preview_type"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mRecordPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/call_rec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mRecordPath:Ljava/lang/String;

    .line 88
    iput v5, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mPreviewType:I

    .line 90
    :cond_1
    const-string v1, "record_preview_highlight"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mHighlightFileName:Ljava/lang/String;

    .line 93
    :cond_2
    iget v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mPreviewType:I

    if-ne v1, v4, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mCallRecordView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 105
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v1}, Lcom/android/soundrecorder/RecordResourceAdapter;->onStop()V

    .line 107
    iput-object v3, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    .line 110
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v1, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    new-instance v1, Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/soundrecorder/RecordResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    .line 116
    iget-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mHighlightFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/soundrecorder/RecordResourceAdapter;->setHighLightFileName(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mRecordPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/soundrecorder/RecordResourceAdapter;->setFolderPath(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 122
    return-void

    .line 99
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mCallRecordView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 101
    iput-boolean v4, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mBackToRecFolder:Z

    goto :goto_0
.end method

.method private parseCallRecIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "record_preview_type"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v1, "record_preview_highlight"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callrec://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :cond_0
    return-object p1
.end method

.method private showDeleteConfirmDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 282
    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecordPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    const v1, 0x104000a

    new-instance v2, Lcom/android/soundrecorder/RecordPreviewActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/android/soundrecorder/RecordPreviewActivity$2;-><init>(Lcom/android/soundrecorder/RecordPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 297
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mBackToRecFolder:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v1, "record_preview_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mCallRecordView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "record_preview_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icycle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->parseCallRecIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->init(Landroid/content/Intent;)V

    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->setVolumeControlStream(I)V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordResourceAdapter;->onStop()V

    .line 142
    iget-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordResourceAdapter;->clearMaps()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 146
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 196
    add-int/lit8 p3, p3, -0x1

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v3, p3}, Lcom/android/soundrecorder/RecordResourceAdapter;->getDataItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/resourcebrowser/resource/Resource;

    .line 199
    .local v2, resourceItem:Lmiui/app/resourcebrowser/resource/Resource;
    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v2}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 206
    .restart local v1       #path:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 215
    add-int/lit8 p3, p3, -0x1

    .line 217
    :cond_0
    iget-object v5, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v5, p3}, Lcom/android/soundrecorder/RecordResourceAdapter;->getDataItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/resourcebrowser/resource/Resource;

    .line 218
    .local v3, resourceItem:Lmiui/app/resourcebrowser/resource/Resource;
    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v3}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, path:Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 221
    .local v4, titleView:Landroid/view/View;
    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v6, v2}, Lcom/android/soundrecorder/RecordResourceAdapter;->formatRecordTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v7, v2}, Lcom/android/soundrecorder/RecordResourceAdapter;->formatFileTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v7, v2}, Lcom/android/soundrecorder/RecordResourceAdapter;->formatDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 229
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f060029

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/RecordPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const v5, 0x7f06002a

    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/RecordPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    const/4 v5, 0x2

    const v6, 0x7f06002b

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/RecordPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 233
    .local v1, menuItemArray:[Ljava/lang/CharSequence;
    new-instance v5, Lcom/android/soundrecorder/RecordPreviewActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/android/soundrecorder/RecordPreviewActivity$1;-><init>(Lcom/android/soundrecorder/RecordPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 262
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #menuItemArray:[Ljava/lang/CharSequence;
    .end local v2           #path:Ljava/lang/String;
    .end local v4           #titleView:Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/RecordPreviewActivity;->parseCallRecIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->init(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 171
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mRecordPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x7f070015
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordResourceAdapter;->stopMusic()V

    .line 135
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 136
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/RecordPreviewActivity;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/Resource;>;"
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 162
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, [Lmiui/app/resourcebrowser/resource/Resource;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/RecordPreviewActivity;->onProgressUpdate([Lmiui/app/resourcebrowser/resource/Resource;)V

    return-void
.end method

.method public varargs onProgressUpdate([Lmiui/app/resourcebrowser/resource/Resource;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 364
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordResourceAdapter;->loadData()V

    .line 128
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-direct {p0}, Lcom/android/soundrecorder/RecordPreviewActivity;->checkRecordFolder()V

    .line 130
    return-void
.end method
