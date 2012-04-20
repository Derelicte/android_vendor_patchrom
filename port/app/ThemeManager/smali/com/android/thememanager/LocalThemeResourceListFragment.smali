.class public Lcom/android/thememanager/LocalThemeResourceListFragment;
.super Lmiui/app/resourcebrowser/LocalResourceListFragment;
.source "LocalThemeResourceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/LocalThemeResourceListFragment$NameComparator;
    }
.end annotation


# instance fields
.field private mCategoryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lmiui/app/resourcebrowser/ResourceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerIntent:Landroid/content/Intent;

.field protected mResourceType:J

.field private mThemeSourcePath:Ljava/lang/String;

.field private mThirdAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/app/resourcebrowser/LocalResourceListFragment;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/LocalThemeResourceListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->resolveIntent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/thememanager/LocalThemeResourceListFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThirdAppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method private getMenuTitleId()I
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->supportMenuPopup(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const v0, 0x7f090027

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initClockPhotoCategoryHeader(Landroid/view/View;)V
    .locals 7
    .parameter "header"

    .prologue
    .line 106
    const v4, 0x7f060003

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 107
    .local v2, categoryList:Landroid/widget/Spinner;
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x1090008

    invoke-direct {v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    .line 108
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 109
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 110
    new-instance v4, Lcom/android/thememanager/LocalThemeResourceListFragment$2;

    invoke-direct {v4, p0}, Lcom/android/thememanager/LocalThemeResourceListFragment$2;-><init>(Lcom/android/thememanager/LocalThemeResourceListFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 138
    new-instance v1, Lmiui/app/resourcebrowser/ResourceCategory;

    invoke-direct {v1}, Lmiui/app/resourcebrowser/ResourceCategory;-><init>()V

    .line 139
    .local v1, cateHeader:Lmiui/app/resourcebrowser/ResourceCategory;
    const v4, 0x30c0027

    invoke-virtual {p0, v4}, Lcom/android/thememanager/LocalThemeResourceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/resourcebrowser/ResourceCategory;->setName(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 141
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v5, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v4, v5, v6}, Lcom/android/thememanager/ThemeHelper;->getClockPhotoCategory(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/resourcebrowser/ResourceCategory;

    .line 142
    .local v0, cate:Lmiui/app/resourcebrowser/ResourceCategory;
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v0           #cate:Lmiui/app/resourcebrowser/ResourceCategory;
    :cond_0
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v5, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceCategory;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter "targetIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    .local p2, skipList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 312
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 314
    .local v3, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_2

    .line 315
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 316
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 317
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 318
    .local v5, skipItem:Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 315
    .end local v5           #skipItem:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 326
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 327
    new-instance v6, Lcom/android/thememanager/LocalThemeResourceListFragment$NameComparator;

    invoke-direct {v6, v2}, Lcom/android/thememanager/LocalThemeResourceListFragment$NameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 330
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v6
.end method

.method private resolveIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 283
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThirdAppInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const-class v1, Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 288
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->resolveIntent(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThirdAppInfoList:Ljava/util/ArrayList;

    .line 308
    :cond_0
    return-void

    .line 289
    :cond_1
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 294
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v3, 0x200

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    :goto_1
    const-class v1, Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_3
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".local"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/android/thememanager/LocalThemeResourceAdapter;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LocalThemeResourceAdapter;-><init>(Landroid/app/Fragment;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->deleteDeprecatedPreviewCache()V

    .line 56
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 197
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 198
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    if-eqz p3, :cond_0

    .line 203
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    .line 204
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/thememanager/ThemeHelper;->moveThemeFileIntoLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, slashPos:I
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    goto :goto_0

    .line 214
    .end local v2           #slashPos:I
    :pswitch_1
    if-eqz p3, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    .local v0, changed:Z
    const-string v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 218
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v6, 0x40

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 220
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/android/thememanager/ThemeHelper;->applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 229
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 230
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v5, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v4, v5, v6, v1}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 233
    :cond_3
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    goto :goto_0

    .line 221
    :cond_4
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v6, 0x100

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 222
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 223
    :cond_5
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v6, 0x200

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 224
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x2

    invoke-static {v4, v5, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 225
    :cond_6
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v6, 0x400

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x4

    invoke-static {v4, v5, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 238
    .end local v0           #changed:Z
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_2
    if-eqz p3, :cond_0

    .line 239
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 240
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/thememanager/ThemeHelper;->saveLockWallpaper(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    .line 241
    .restart local v0       #changed:Z
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onFragmentCreateOptionsMenu(Landroid/view/Menu;)Ljava/util/List;
    .locals 3
    .parameter "menu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->getMenuTitleId()I

    move-result v0

    .line 252
    .local v0, menuId:I
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    return-object v1
.end method

.method public onFragmentOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090027

    if-ne v2, v3, :cond_0

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 264
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 265
    const-string v2, "root_directory"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v2, "ext_filter"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "zip"

    aput-object v4, v3, v5

    const-string v4, "mtz"

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v2, "ext_file_first"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string v2, "back_to_parent_directory"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0, v7}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 162
    invoke-super {p0}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->onResume()V

    .line 163
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, filename:Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v5, 0x100

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 167
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v3, v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->setCurrentUsingPath(Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v3}, Lmiui/app/resourcebrowser/ResourceAdapter;->notifyDataSetChanged()V

    .line 193
    .end local v0           #filename:Ljava/lang/String;
    :cond_1
    return-void

    .line 168
    .restart local v0       #filename:Ljava/lang/String;
    :cond_2
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v5, 0x200

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 170
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 171
    goto :goto_0

    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v5, 0x400

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 172
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 173
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 174
    goto :goto_0

    .line 175
    .end local v2           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, pref:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_6

    .line 178
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v3, v4}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v5, 0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 181
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_5
    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v3, v4, v5}, Lcom/android/thememanager/ThemeHelper;->wallpaperPrefOlderThanSystem(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 187
    :cond_6
    const-string v0, "/system/media/theme/default.mtz"

    goto/16 :goto_0
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "metaData"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->pickMetaData(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    .line 151
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->setMusicVolumeType(Landroid/app/Activity;J)V

    .line 152
    return-void
.end method

.method public setupUI()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x30b004e

    const/4 v8, 0x0

    .line 60
    invoke-super {p0}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->setupUI()V

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, footer:Landroid/view/View;
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 63
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 91
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 93
    .local v3, root:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    .end local v3           #root:Landroid/widget/LinearLayout;
    :cond_1
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/32 v6, 0x10000

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/32 v6, 0x20000

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 98
    const/high16 v4, 0x7f03

    invoke-virtual {v2, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, header:Landroid/view/View;
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 100
    .restart local v3       #root:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 101
    invoke-direct {p0, v1}, Lcom/android/thememanager/LocalThemeResourceListFragment;->initClockPhotoCategoryHeader(Landroid/view/View;)V

    .line 103
    .end local v1           #header:Landroid/view/View;
    .end local v3           #root:Landroid/widget/LinearLayout;
    :cond_3
    return-void

    .line 65
    :cond_4
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v4, v5}, Lcom/android/thememanager/UIHelper;->supportMenuPopup(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    const v4, 0x7f030007

    invoke-virtual {v2, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    new-instance v4, Lcom/android/thememanager/LocalThemeResourceListFragment$1;

    invoke-direct {v4, p0}, Lcom/android/thememanager/LocalThemeResourceListFragment$1;-><init>(Lcom/android/thememanager/LocalThemeResourceListFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
