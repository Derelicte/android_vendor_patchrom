.class public Lcom/android/browser/provider/YellowPageDataProvider;
.super Ljava/lang/Object;
.source "YellowPageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/provider/YellowPageDataProvider$Category;,
        Lcom/android/browser/provider/YellowPageDataProvider$Site;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String;

.field private static mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/provider/YellowPageDataProvider$Category;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/browser/provider/YellowPageDataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/YellowPageDataProvider;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/provider/YellowPageDataProvider$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/browser/provider/YellowPageDataProvider;->mInitialized:Z

    if-nez v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/android/browser/provider/YellowPageDataProvider;->initialize(Landroid/content/Context;)V

    .line 28
    :cond_0
    sget-object v0, Lcom/android/browser/provider/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 32
    sget-object v21, Lcom/android/browser/provider/YellowPageDataProvider;->LOGTAG:Ljava/lang/String;

    monitor-enter v21

    .line 33
    :try_start_0
    sget-boolean v20, Lcom/android/browser/provider/YellowPageDataProvider;->mInitialized:Z

    if-eqz v20, :cond_0

    monitor-exit v21

    .line 75
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    sput-object v20, Lcom/android/browser/provider/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 37
    .local v3, am:Landroid/content/res/AssetManager;
    const/16 v16, 0x0

    .line 38
    .local v16, stream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v8

    .line 39
    .local v8, isInternationalVersion:Z
    if-eqz v8, :cond_2

    .line 40
    const-string v20, "yellowpage-en.json"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 44
    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, jsonText:Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v12, obj:Lorg/json/JSONObject;
    const-string v20, "yellowpage"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 48
    .local v19, yellowpage:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    .line 49
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 50
    .local v4, category:Lorg/json/JSONObject;
    const-string v20, "cat"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, categoryName:Ljava/lang/String;
    const-string v20, "sites"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 52
    .local v15, sites:Lorg/json/JSONArray;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v14, siteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/provider/YellowPageDataProvider$Site;>;"
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_3

    .line 54
    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 55
    .local v13, site:Lorg/json/JSONObject;
    const-string v20, "title"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 56
    .local v17, title:Ljava/lang/String;
    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 57
    .local v18, url:Ljava/lang/String;
    const/4 v9, 0x0

    .line 58
    .local v9, isWapSite:Z
    const-string v20, "class"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "class"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v22, "m"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 59
    const/4 v9, 0x1

    .line 61
    :cond_1
    new-instance v20, Lcom/android/browser/provider/YellowPageDataProvider$Site;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/browser/provider/YellowPageDataProvider$Site;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 42
    .end local v4           #category:Lorg/json/JSONObject;
    .end local v5           #categoryName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #isWapSite:Z
    .end local v10           #j:I
    .end local v11           #jsonText:Ljava/lang/String;
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v13           #site:Lorg/json/JSONObject;
    .end local v14           #siteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/provider/YellowPageDataProvider$Site;>;"
    .end local v15           #sites:Lorg/json/JSONArray;
    .end local v17           #title:Ljava/lang/String;
    .end local v18           #url:Ljava/lang/String;
    .end local v19           #yellowpage:Lorg/json/JSONArray;
    :cond_2
    const-string v20, "yellowpage.json"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    goto/16 :goto_1

    .line 63
    .restart local v4       #category:Lorg/json/JSONObject;
    .restart local v5       #categoryName:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v10       #j:I
    .restart local v11       #jsonText:Ljava/lang/String;
    .restart local v12       #obj:Lorg/json/JSONObject;
    .restart local v14       #siteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/provider/YellowPageDataProvider$Site;>;"
    .restart local v15       #sites:Lorg/json/JSONArray;
    .restart local v19       #yellowpage:Lorg/json/JSONArray;
    :cond_3
    sget-object v20, Lcom/android/browser/provider/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    new-instance v22, Lcom/android/browser/provider/YellowPageDataProvider$Category;

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v14}, Lcom/android/browser/provider/YellowPageDataProvider$Category;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 65
    .end local v4           #category:Lorg/json/JSONObject;
    .end local v5           #categoryName:Ljava/lang/String;
    .end local v10           #j:I
    .end local v14           #siteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/provider/YellowPageDataProvider$Site;>;"
    .end local v15           #sites:Lorg/json/JSONArray;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .end local v7           #i:I
    .end local v8           #isInternationalVersion:Z
    .end local v11           #jsonText:Ljava/lang/String;
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v19           #yellowpage:Lorg/json/JSONArray;
    :goto_4
    const/16 v20, 0x1

    :try_start_2
    sput-boolean v20, Lcom/android/browser/provider/YellowPageDataProvider;->mInitialized:Z

    .line 74
    monitor-exit v21

    goto/16 :goto_0

    .end local v3           #am:Landroid/content/res/AssetManager;
    .end local v16           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    .line 66
    .restart local v3       #am:Landroid/content/res/AssetManager;
    .restart local v16       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 67
    .local v6, e:Ljava/io/IOException;
    :try_start_3
    sget-object v20, Lcom/android/browser/provider/YellowPageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v22, "Failed to parse yellow page source file"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 69
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 70
    .local v6, e:Lorg/json/JSONException;
    sget-object v20, Lcom/android/browser/provider/YellowPageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v22, "Failed to parse yellow page source file"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method
