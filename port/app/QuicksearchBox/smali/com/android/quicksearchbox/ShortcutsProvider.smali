.class public Lcom/android/quicksearchbox/ShortcutsProvider;
.super Landroid/content/ContentProvider;
.source "ShortcutsProvider.java"


# instance fields
.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ShortcutsProvider;->storeShortcut(Landroid/content/ComponentName;Landroid/content/ContentValues;)V

    return-void
.end method

.method private addShortcut(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 101
    const-string v3, "shortcut_source"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, sourceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    const-string v3, "QSB.ExternalShortcutReceiver"

    const-string v4, "Missing shortcut_source"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v3, "suggest_intent_action"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, sourceAction:Ljava/lang/String;
    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 117
    .local v1, sourceComponent:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/quicksearchbox/ShortcutsProvider;->checkCallingPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    const-string v3, "QSB.ExternalShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got shortcut for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from a different process"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v3

    new-instance v4, Lcom/android/quicksearchbox/ShortcutsProvider$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/quicksearchbox/ShortcutsProvider$1;-><init>(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/QsbApplication;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, authority:Ljava/lang/String;
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 55
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "shortcuts"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-object v1
.end method

.method private checkCallingPackage(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    .line 148
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 149
    .local v1, callingUid:I
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 150
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, uidPkgs:[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v7

    .line 152
    :cond_1
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 153
    .local v5, uidPkg:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    .line 152
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method private makeSuggestion(Lcom/android/quicksearchbox/Source;Landroid/content/ContentValues;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 16
    .parameter "source"
    .parameter "shortcut"

    .prologue
    .line 159
    const-string v14, "suggest_format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, format:Ljava/lang/String;
    const-string v14, "suggest_text_1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, text1:Ljava/lang/String;
    const-string v14, "suggest_text_2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, text2:Ljava/lang/String;
    const-string v14, "suggest_text_2_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, text2Url:Ljava/lang/String;
    const-string v14, "suggest_icon_1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, icon1:Ljava/lang/String;
    const-string v14, "suggest_icon_2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, icon2:Ljava/lang/String;
    const-string v14, "suggest_shortcut_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, shortcutId:Ljava/lang/String;
    const-string v14, "suggest_spinner_while_refreshing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/quicksearchbox/ShortcutsProvider;->unboxBoolean(Ljava/lang/Boolean;Z)Z

    move-result v9

    .line 169
    .local v9, spinnerWhileRefreshing:Z
    const-string v14, "suggest_intent_action"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, intentAction:Ljava/lang/String;
    const-string v14, "suggest_intent_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, intentData:Ljava/lang/String;
    const-string v14, "suggest_intent_extra_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, intentExtraData:Ljava/lang/String;
    const-string v14, "suggest_intent_query"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, query:Ljava/lang/String;
    new-instance v10, Lcom/android/quicksearchbox/SuggestionData;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/quicksearchbox/SuggestionData;-><init>(Lcom/android/quicksearchbox/Source;)V

    .line 176
    .local v10, suggestion:Lcom/android/quicksearchbox/SuggestionData;
    invoke-virtual {v10, v1}, Lcom/android/quicksearchbox/SuggestionData;->setFormat(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 177
    invoke-virtual {v10, v11}, Lcom/android/quicksearchbox/SuggestionData;->setText1(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 178
    invoke-virtual {v10, v12}, Lcom/android/quicksearchbox/SuggestionData;->setText2(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 179
    invoke-virtual {v10, v13}, Lcom/android/quicksearchbox/SuggestionData;->setText2Url(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 180
    invoke-virtual {v10, v2}, Lcom/android/quicksearchbox/SuggestionData;->setIcon1(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 181
    invoke-virtual {v10, v3}, Lcom/android/quicksearchbox/SuggestionData;->setIcon2(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 182
    invoke-virtual {v10, v8}, Lcom/android/quicksearchbox/SuggestionData;->setShortcutId(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 183
    invoke-virtual {v10, v9}, Lcom/android/quicksearchbox/SuggestionData;->setSpinnerWhileRefreshing(Z)Lcom/android/quicksearchbox/SuggestionData;

    .line 184
    invoke-virtual {v10, v4}, Lcom/android/quicksearchbox/SuggestionData;->setIntentAction(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 185
    invoke-virtual {v10, v5}, Lcom/android/quicksearchbox/SuggestionData;->setIntentData(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 186
    invoke-virtual {v10, v6}, Lcom/android/quicksearchbox/SuggestionData;->setIntentExtraData(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 187
    invoke-virtual {v10, v7}, Lcom/android/quicksearchbox/SuggestionData;->setSuggestionQuery(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;

    .line 188
    return-object v10
.end method

.method private storeShortcut(Landroid/content/ComponentName;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "sourceComponent"
    .parameter "shortcut"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/quicksearchbox/Corpora;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object v1

    .line 134
    .local v1, source:Lcom/android/quicksearchbox/Source;
    if-nez v1, :cond_0

    .line 135
    const-string v3, "QSB.ExternalShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown shortcut source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v3, "user_query"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, userQuery:Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, ""

    .line 142
    :cond_1
    new-instance v0, Lcom/android/quicksearchbox/ListSuggestionCursor;

    invoke-direct {v0, v2}, Lcom/android/quicksearchbox/ListSuggestionCursor;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, cursor:Lcom/android/quicksearchbox/ListSuggestionCursor;
    invoke-direct {p0, v1, p2}, Lcom/android/quicksearchbox/ShortcutsProvider;->makeSuggestion(Lcom/android/quicksearchbox/Source;Landroid/content/ContentValues;)Lcom/android/quicksearchbox/SuggestionData;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 144
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    goto :goto_0
.end method

.method private static unboxBoolean(Ljava/lang/Boolean;Z)Z
    .locals 0
    .parameter "value"
    .parameter "defValue"

    .prologue
    .line 192
    if-nez p0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/quicksearchbox/ShortcutsProvider;->addShortcut(Landroid/content/ContentValues;)V

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
