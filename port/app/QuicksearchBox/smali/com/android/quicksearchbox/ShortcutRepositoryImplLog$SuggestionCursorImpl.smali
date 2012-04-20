.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;
.super Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionCursorImpl"
.end annotation


# instance fields
.field private final mAllowedSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtrasColumn:I

.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/util/HashMap;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter "userQuery"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Source;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, allowedSources:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/quicksearchbox/Source;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    .line 380
    invoke-direct {p0, p3, p4}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 381
    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mAllowedSources:Ljava/util/HashMap;

    .line 382
    sget-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mExtrasColumn:I

    .line 383
    return-void
.end method


# virtual methods
.method public getExtraColumns()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 5

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mExtrasColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, json:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    :try_start_0
    new-instance v2, Lcom/android/quicksearchbox/JsonBackedSuggestionExtras;

    invoke-direct {v2, v1}, Lcom/android/quicksearchbox/JsonBackedSuggestionExtras;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-object v2

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "QSB.CursorBackedSuggestionCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse JSON extras from DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->isSpinnerWhileRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    #calls: Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->shouldRefresh(Lcom/android/quicksearchbox/Suggestion;)Z
    invoke-static {v0, p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->access$500(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    #getter for: Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mSearchSpinner:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->access$600(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mCursor:Landroid/database/Cursor;

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 417
    .local v0, componentCol:I
    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->stringToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    invoke-static {v1, v2}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->access$400(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 387
    iget-object v5, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mCursor:Landroid/database/Cursor;

    sget-object v6, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 388
    .local v1, srcCol:I
    iget-object v5, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, srcStr:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 390
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Missing source for shortcut."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :cond_0
    iget-object v5, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mAllowedSources:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Source;

    .line 393
    .local v0, source:Lcom/android/quicksearchbox/Source;
    if-nez v0, :cond_2

    move-object v0, v4

    .line 408
    .end local v0           #source:Lcom/android/quicksearchbox/Source;
    :cond_1
    :goto_0
    return-object v0

    .line 400
    .restart local v0       #source:Lcom/android/quicksearchbox/Source;
    :cond_2
    iget-object v5, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;->mCursor:Landroid/database/Cursor;

    sget-object v6, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v6}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 401
    .local v3, versionCode:I
    invoke-interface {v0, v3}, Lcom/android/quicksearchbox/Source;->isVersionCodeCompatible(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    .line 406
    goto :goto_0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method
