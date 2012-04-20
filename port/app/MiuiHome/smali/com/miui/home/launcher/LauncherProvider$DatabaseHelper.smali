.class Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;
    }
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mMaxId:J

.field private mPresetsContainerId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    .line 288
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 284
    iput-wide v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 285
    iput-wide v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    .line 289
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 290
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 294
    iget-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 297
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 10
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    .line 749
    const/4 v3, 0x0

    .line 750
    .local v3, info:Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, className:Ljava/lang/String;
    const/16 v7, 0xd

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p3, v7, v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 755
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .local v1, cn:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {p5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 769
    const/high16 v7, 0x1020

    invoke-virtual {p5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 771
    const-string v7, "intent"

    const/4 v8, 0x0

    invoke-virtual {p5, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    if-eqz v3, :cond_0

    .line 773
    const-string v7, "title"

    invoke-virtual {v3, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    const-string v7, "itemType"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string v7, "iconPackage"

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v7, "spanX"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v7, "spanY"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    const-string v7, "favorites"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    const/4 v7, 0x1

    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_1
    return v7

    .line 758
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .restart local v1       #cn:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {p4, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 760
    .end local v1           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 761
    .local v4, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {p4, v7}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 763
    .local v6, packages:[Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-direct {v1, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .restart local v1       #cn:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {p4, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    .line 780
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v4           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 781
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Launcher.LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to add favorite: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 6
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 872
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 874
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 880
    const/4 v0, 0x1

    .line 882
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v1           #appWidgetId:I
    :goto_0
    return v0

    .line 883
    :catch_0
    move-exception v3

    .line 884
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 13
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"

    .prologue
    .line 835
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 836
    .local v11, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 838
    .local v7, className:Ljava/lang/String;
    if-eqz v11, :cond_0

    if-nez v7, :cond_1

    .line 839
    :cond_0
    const/4 v1, 0x0

    .line 863
    :goto_0
    return v1

    .line 842
    :cond_1
    const/4 v10, 0x1

    .line 843
    .local v10, hasPackage:Z
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v11, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_1
    if-eqz v10, :cond_2

    .line 858
    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getInt(II)I

    move-result v5

    .line 859
    .local v5, spanX:I
    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getInt(II)I

    move-result v6

    .local v6, spanY:I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 860
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v1

    goto :goto_0

    .line 846
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    :catch_0
    move-exception v8

    .line 847
    .local v8, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 849
    .local v12, packages:[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-direct {v4, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .restart local v4       #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 852
    :catch_1
    move-exception v9

    .line 853
    .local v9, e1:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 863
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Ljava/lang/Exception;
    .end local v12           #packages:[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "db"
    .parameter "values"

    .prologue
    .line 819
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;)Z
    .locals 5
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v4, 0x1

    .line 736
    const-string v2, "title"

    const/16 v3, 0x9

    invoke-virtual {p3, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 741
    .local v0, id:J
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    .line 744
    :cond_0
    return v4
.end method

.method private addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z
    .locals 3
    .parameter "db"
    .parameter "values"
    .parameter "gadgetId"

    .prologue
    .line 823
    invoke-static {p3}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    .line 824
    .local v0, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    const-string v1, "spanX"

    iget v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const-string v1, "spanY"

    iget v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v1, "itemType"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v1, "appWidgetId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 829
    const/4 v1, 0x1

    return v1
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "db"
    .parameter "values"

    .prologue
    .line 815
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;)Z
    .locals 7
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 892
    const/16 v5, 0xc

    invoke-virtual {p3, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, iconRes:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 917
    :goto_0
    return v3

    .line 896
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 897
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v5, "iconResource"

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v5, "iconPackage"

    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v5, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v5, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    const/16 v5, 0xb

    invoke-virtual {p3, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    invoke-virtual {p3, v4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 907
    const/16 v5, 0xa

    invoke-virtual {p3, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, uri:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 909
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 911
    :cond_1
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v5, "intent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v5, "title"

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v5, "itemType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    const-string v5, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    const-string v3, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v3, v4

    .line 917
    goto/16 :goto_0
.end method

.method private createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 383
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_item;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    const-string v0, "CREATE TRIGGER update_item_on_update_item  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container > 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | (SELECT ((itemFlags>>1)&1) from favorites where _id==new.container))     WHERE _id==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 386
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_home;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 387
    const-string v0, "CREATE TRIGGER update_item_on_update_home  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container <= 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | 0)     WHERE _id==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 389
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_folder;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    const-string v0, "CREATE TRIGGER update_item_on_update_folder  AFTER UPDATE of itemFlags ON favorites  WHEN new.itemType == 2  BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | ((new.itemFlags>>1)&1))      WHERE container==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method private createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 394
    const-string v0, "DROP TABLE IF EXISTS screens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    const-string v0, "CREATE TABLE screens (_id INTEGER PRIMARY KEY,title TEXT,screenOrder INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    const-string v1, "favorites"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "MAX(screen)"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 409
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 411
    .local v8, count:I
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v12, values:Landroid/content/ContentValues;
    new-array v11, v8, [J

    .line 413
    .local v11, ids:[J
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 414
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 415
    const-string v0, "screenOrder"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v0, "screens"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    aput-wide v0, v11, v10

    .line 413
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 418
    :cond_0
    add-int/lit8 v10, v8, -0x1

    :goto_1
    if-ltz v10, :cond_1

    .line 419
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 420
    const-string v0, "screen"

    aget-wide v1, v11, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v0, "favorites"

    const-string v1, "screen=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 429
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #ids:[J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v9, :cond_2

    .line 430
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_2
    return-void

    .line 429
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 430
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6
    .parameter "db"

    .prologue
    .line 629
    const-string v4, "SELECT MAX(_id) FROM favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 632
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 633
    .local v3, maxIdIndex:I
    const-wide/16 v1, -0x1

    .line 634
    .local v1, id:J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 637
    :cond_0
    if-eqz v0, :cond_1

    .line 638
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    .line 642
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 645
    :cond_2
    return-wide v1
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 22
    .parameter "db"

    .prologue
    .line 654
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 655
    .local v7, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v4, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 659
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    .line 661
    .local v15, i:I
    const/16 v17, 0x0

    .line 663
    .local v17, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v18, Ljava/io/FileReader;

    const-string v2, "/data/media/customized/default_workspace.xml"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 664
    .local v18, reader:Ljava/io/FileReader;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 665
    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 668
    .end local v18           #reader:Ljava/io/FileReader;
    :goto_0
    if-nez v17, :cond_0

    .line 669
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 671
    :cond_0
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 672
    .local v9, attrs:Landroid/util/AttributeSet;
    const-string v2, "favorites"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 674
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 678
    .local v12, depth:I
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v12, :cond_7

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_7

    .line 680
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    .line 684
    const/4 v8, 0x0

    .line 685
    .local v8, added:Z
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 686
    .local v16, name:Ljava/lang/String;
    new-instance v5, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;

    sget-object v2, Lcom/miui/home/R$styleable;->Favorite:[I

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v9, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;-><init>(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Ljava/lang/Object;[I)V

    .line 688
    .local v5, a:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 689
    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 690
    .local v10, container:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v11, -0x64

    .line 693
    .local v11, containerID:I
    :goto_2
    const/16 v2, -0x64

    if-ne v11, v2, :cond_3

    .line 694
    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 695
    const-string v2, "screen"

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_3
    if-gez v11, :cond_4

    .line 699
    const-string v2, "cellX"

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v2, "cellY"

    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_4
    const-string v2, "container"

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v2, "default"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 707
    .local v14, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_default_screen"

    const-string v3, "screen"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-interface {v14, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 708
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 723
    .end local v14           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    add-int/lit8 v15, v15, 0x1

    .line 725
    :cond_6
    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 727
    .end local v5           #a:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;
    .end local v8           #added:Z
    .end local v9           #attrs:Landroid/util/AttributeSet;
    .end local v10           #container:Ljava/lang/String;
    .end local v11           #containerID:I
    .end local v12           #depth:I
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #type:I
    :catch_0
    move-exception v13

    .line 728
    .local v13, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v13           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_7
    :goto_4
    return v15

    .line 690
    .restart local v5       #a:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;
    .restart local v8       #added:Z
    .restart local v9       #attrs:Landroid/util/AttributeSet;
    .restart local v10       #container:Ljava/lang/String;
    .restart local v12       #depth:I
    .restart local v16       #name:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_8
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    .line 709
    .restart local v11       #containerID:I
    :cond_9
    const-string v2, "favorite"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 710
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v8

    goto :goto_3

    .line 711
    :cond_a
    const-string v2, "search"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v8

    goto :goto_3

    .line 713
    :cond_b
    const-string v2, "clock"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v8

    goto :goto_3

    .line 715
    :cond_c
    const-string v2, "appwidget"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v8

    goto :goto_3

    .line 717
    :cond_d
    const-string v2, "shortcut"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 718
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;)Z

    move-result v8

    goto :goto_3

    .line 719
    :cond_e
    const-string v2, "folder"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    goto/16 :goto_3

    .line 729
    .end local v5           #a:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$FakedTypedArray;
    .end local v8           #added:Z
    .end local v9           #attrs:Landroid/util/AttributeSet;
    .end local v10           #container:Ljava/lang/String;
    .end local v11           #containerID:I
    .end local v12           #depth:I
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #type:I
    :catch_1
    move-exception v13

    .line 730
    .local v13, e:Ljava/io/IOException;
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 666
    .end local v13           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method private loadPresetsApps(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 26
    .parameter "db"

    .prologue
    .line 921
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_1

    .line 922
    const/4 v8, 0x0

    .line 992
    :cond_0
    return v8

    .line 924
    :cond_1
    new-instance v9, Ljava/io/File;

    const-string v22, "/data/media/preset_apps"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    .local v9, f:Ljava/io/File;
    const/4 v8, 0x0

    .line 926
    .local v8, counter:I
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 927
    new-instance v22, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$1;-><init>(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 933
    .local v11, flist:[Ljava/io/File;
    if-eqz v11, :cond_0

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 935
    .local v19, pm:Landroid/content/pm/PackageManager;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 936
    .local v21, values:Landroid/content/ContentValues;
    new-instance v14, Landroid/content/Intent;

    const-string v22, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 938
    .local v17, pRes:Landroid/content/res/Resources;
    move-object v5, v11

    .local v5, arr$:[Ljava/io/File;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    aget-object v10, v5, v12

    .line 939
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 940
    .local v18, pinfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 941
    .local v4, ainfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v18, :cond_6

    .line 942
    new-instance v6, Landroid/content/res/AssetManager;

    invoke-direct {v6}, Landroid/content/res/AssetManager;-><init>()V

    .line 943
    .local v6, assmgr:Landroid/content/res/AssetManager;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 944
    new-instance v20, Landroid/content/res/Resources;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v6, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 945
    .local v20, res:Landroid/content/res/Resources;
    const/4 v15, 0x0

    .line 946
    .local v15, label:Ljava/lang/CharSequence;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 948
    :try_start_0
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 952
    :cond_2
    :goto_1
    if-nez v15, :cond_3

    .line 953
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 956
    :cond_3
    :goto_2
    const/4 v13, 0x0

    .line 957
    .local v13, icon:Landroid/graphics/drawable/Drawable;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 959
    :try_start_1
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 963
    :cond_4
    :goto_3
    if-nez v13, :cond_5

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 966
    :cond_5
    if-nez v13, :cond_8

    .line 938
    .end local v6           #assmgr:Landroid/content/res/AssetManager;
    .end local v13           #icon:Landroid/graphics/drawable/Drawable;
    .end local v15           #label:Ljava/lang/CharSequence;
    .end local v20           #res:Landroid/content/res/Resources;
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 953
    .restart local v6       #assmgr:Landroid/content/res/AssetManager;
    .restart local v15       #label:Ljava/lang/CharSequence;
    .restart local v20       #res:Landroid/content/res/Resources;
    :cond_7
    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 969
    .restart local v13       #icon:Landroid/graphics/drawable/Drawable;
    :cond_8
    if-eqz v15, :cond_6

    .line 970
    const-string v22, "title"

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v22, "container"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 972
    const-string v22, "iconPackage"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v22, "spanX"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    const-string v22, "spanY"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    const/high16 v22, 0x1020

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 977
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v22

    const-string v23, "apk"

    invoke-static/range {v23 .. v23}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v22, "intent"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v22, "itemType"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    const-string v22, "itemFlags"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const-string v22, "iconType"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v13, v0}, Lcom/miui/home/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 983
    .local v7, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lcom/miui/home/launcher/ItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 984
    const-string v22, "favorites"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 985
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 986
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 960
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v22

    goto/16 :goto_3

    .line 949
    .end local v13           #icon:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v22

    goto/16 :goto_1
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 481
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 487
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 488
    .local v9, logged:Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 491
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 494
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 495
    .local v8, idIndex:I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 497
    .local v5, iconIndex:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 498
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 499
    .local v6, id:J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 501
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/miui/home/launcher/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 504
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 505
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 506
    invoke-static {v0}, Lcom/miui/home/launcher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 507
    if-eqz v2, :cond_1

    .line 508
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 509
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 511
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 513
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 514
    .local v3, e:Ljava/lang/Exception;
    if-nez v9, :cond_2

    .line 515
    :try_start_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 517
    :cond_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 523
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_1
    move-exception v4

    .line 524
    .local v4, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 527
    if-eqz v10, :cond_3

    .line 528
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 530
    :cond_3
    if-eqz v1, :cond_4

    .line 531
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 534
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_2
    return-void

    .line 522
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 526
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 527
    if-eqz v10, :cond_6

    .line 528
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 530
    :cond_6
    if-eqz v1, :cond_4

    .line 531
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 526
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 527
    if-eqz v10, :cond_7

    .line 528
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 530
    :cond_7
    if-eqz v1, :cond_8

    .line 531
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 308
    return-void
.end method


# virtual methods
.method public generateNewId()J
    .locals 4

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 621
    iget-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 314
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 316
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,launchCount INTEGER NOT NULL DEFAULT 1,sortMode INTEGER,itemFlags INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 344
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 350
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadPresetsApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 352
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v3, 0x9

    .line 439
    move v1, p2

    .line 441
    .local v1, version:I
    const/4 v0, 0x0

    .line 443
    .local v0, needCreateTriggers:Z
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 448
    const/16 v1, 0x8

    .line 451
    :cond_0
    if-ge v1, v3, :cond_1

    .line 452
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 453
    const/16 v1, 0x9

    .line 456
    :cond_1
    if-ne v1, v3, :cond_2

    .line 457
    const-string v2, "ALTER TABLE favorites ADD COLUMN launchCount INTEGER NOT NULL DEFAULT 1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 459
    const-string v2, "ALTER TABLE favorites ADD COLUMN sortMode INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    const/16 v1, 0xa

    .line 464
    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 465
    const-string v2, "ALTER TABLE favorites ADD COLUMN itemFlags INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 467
    const/16 v1, 0xb

    .line 470
    :cond_3
    if-eqz v0, :cond_4

    .line 471
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 474
    :cond_4
    if-eq v1, p3, :cond_5

    .line 475
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Destroying all old data and re-create."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 478
    :cond_5
    return-void
.end method

.method public updateMaxId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 626
    return-void
.end method
