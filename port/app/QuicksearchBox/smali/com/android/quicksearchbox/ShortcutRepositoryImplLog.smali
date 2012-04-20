.class public Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Lcom/android/quicksearchbox/ShortcutRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;,
        Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;,
        Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;,
        Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;,
        Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;
    }
.end annotation


# static fields
.field private static final GROUP_BY:Ljava/lang/String;

.field private static final HAS_HISTORY_QUERY:Ljava/lang/String;

.field private static final LAST_HIT_TIME_EXPR:Ljava/lang/String;

.field private static final PREFER_LATEST_PREFIX:Ljava/lang/String;

.field private static final PREFIX_RESTRICTION:Ljava/lang/String;

.field private static final SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

.field private static final SHORTCUT_QUERY_COLUMNS:[Ljava/lang/String;

.field private static final SOURCE_RANKING_SQL:Ljava/lang/String;

.field private static final TABLES:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mCorpora:Lcom/android/quicksearchbox/Corpora;

.field private mEmptyQueryShortcutQuery:Ljava/lang/String;

.field private final mLogExecutor:Ljava/util/concurrent/Executor;

.field private final mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

.field private final mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

.field private final mSearchSpinner:Ljava/lang/String;

.field private mShortcutQuery:Ljava/lang/String;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->HAS_HISTORY_QUERY:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->buildSourceRankingSql()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->SOURCE_RANKING_SQL:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicklog INNER JOIN shortcuts ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->TABLES:Ljava/lang/String;

    .line 120
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v2, v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v2, v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v2, v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v3, v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_text_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_text_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_text_2_url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_icon_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_icon_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v2, v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_intent_extra_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_shortcut_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_spinner_while_refreshing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suggest_log_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v2, v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->SHORTCUT_QUERY_COLUMNS:[Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= ?1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < ?2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->PREFIX_RESTRICTION:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->LAST_HIT_TIME_EXPR:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    iget-object v0, v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->GROUP_BY:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->LAST_HIT_TIME_EXPR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->LAST_HIT_TIME_EXPR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->PREFER_LATEST_PREFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "config"
    .parameter "corpora"
    .parameter "refresher"
    .parameter "uiThread"
    .parameter "logExecutor"
    .parameter "name"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 103
    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    .line 104
    iput-object p4, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    .line 105
    iput-object p5, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mUiThread:Landroid/os/Handler;

    .line 106
    iput-object p6, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mLogExecutor:Ljava/util/concurrent/Executor;

    .line 107
    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    const/16 v1, 0x20

    invoke-direct {v0, p1, p7, v1, p2}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/android/quicksearchbox/Config;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    .line 108
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->buildShortcutQueries()V

    .line 110
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mContext:Landroid/content/Context;

    const v1, 0x7f020046

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mSearchSpinner:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->hasHistory(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getCorpusScores()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->stringToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->shouldRefresh(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mSearchSpinner:Ljava/lang/String;

    return-object v0
.end method

.method private buildShortcutQueries()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?3 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v2}, Lcom/android/quicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, cutOffTime_expr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    iget-object v2, v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, ageRestriction:Ljava/lang/String;
    const/4 v5, 0x0

    .line 164
    .local v5, having:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUM(("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    iget-object v2, v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") / 1000)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, ordering_expr:Ljava/lang/String;
    move-object v3, v8

    .line 168
    .local v3, where:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->PREFER_LATEST_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, preferLatest:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, orderBy:Ljava/lang/String;
    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->TABLES:Ljava/lang/String;

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->SHORTCUT_QUERY_COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->GROUP_BY:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mEmptyQueryShortcutQuery:Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->PREFIX_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->PREFER_LATEST_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->TABLES:Ljava/lang/String;

    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->SHORTCUT_QUERY_COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->GROUP_BY:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mShortcutQuery:Ljava/lang/String;

    .line 180
    return-void
.end method

.method private static buildShortcutQueryParams(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 3
    .parameter "query"
    .parameter "now"

    .prologue
    .line 474
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->nextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static buildSourceRankingSql()Ljava/lang/String;
    .locals 10

    .prologue
    .line 187
    sget-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->name()Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, orderingExpr:Ljava/lang/String;
    const-string v9, "sourcetotals"

    .line 189
    .local v9, tables:Ljava/lang/String;
    sget-object v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->COLUMNS:[Ljava/lang/String;

    .line 190
    .local v2, columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= $1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 192
    .local v4, groupBy:Ljava/lang/String;
    const/4 v5, 0x0

    .line 193
    .local v5, having:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, orderBy:Ljava/lang/String;
    const/4 v7, 0x0

    .line 195
    .local v7, limit:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "sourcetotals"

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "component"

    .prologue
    .line 615
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;)Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 8
    .parameter "context"
    .parameter "config"
    .parameter "sources"
    .parameter "refresher"
    .parameter "uiThread"
    .parameter "logExecutor"

    .prologue
    .line 90
    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    const-string v7, "qsb-log.db"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCorpusScores()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Config;->getMinClicksForSourceRanking()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getCorpusScores(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getIconUriString(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "source"
    .parameter "drawableId"

    .prologue
    const/4 v1, 0x0

    .line 624
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-object v1

    .line 628
    :cond_1
    const-string v2, "android.resource"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "file"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, p2

    .line 631
    goto :goto_0

    .line 633
    :cond_3
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 634
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasHistory(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .parameter "db"

    .prologue
    .line 297
    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->HAS_HISTORY_QUERY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 300
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 302
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    .line 300
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private makeIntentKey(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 8
    .parameter "suggestion"

    .prologue
    .line 586
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, intentAction:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, intentComponent:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, intentData:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, intentQuery:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v5

    .line 592
    .local v5, source:Lcom/android/quicksearchbox/Source;
    invoke-interface {v5}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, sourceName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .local v4, key:Ljava/lang/StringBuilder;
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_0
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_1
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_2
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    if-eqz v3, :cond_3

    .line 608
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private makeShortcutRow(Lcom/android/quicksearchbox/Suggestion;)Landroid/content/ContentValues;
    .locals 19
    .parameter "suggestion"

    .prologue
    .line 529
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v8

    .line 530
    .local v8, intentAction:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, intentComponent:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v10

    .line 532
    .local v10, intentData:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v13

    .line 533
    .local v13, intentQuery:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v11

    .line 535
    .local v11, intentExtraData:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v14

    .line 536
    .local v14, source:Lcom/android/quicksearchbox/Source;
    invoke-interface {v14}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v15

    .line 538
    .local v15, sourceName:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->makeIntentKey(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v12

    .line 541
    .local v12, intentKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getIconUriString(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, icon1Uri:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getIconUriString(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 544
    .local v7, icon2Uri:Ljava/lang/String;
    const/4 v5, 0x0

    .line 545
    .local v5, extrasJson:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v4

    .line 546
    .local v4, extras:Lcom/android/quicksearchbox/SuggestionExtras;
    if-eqz v4, :cond_0

    .line 550
    :try_start_0
    invoke-interface {v4}, Lcom/android/quicksearchbox/SuggestionExtras;->toJsonString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 556
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v2, cv:Landroid/content/ContentValues;
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v14}, Lcom/android/quicksearchbox/Source;->getVersionCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionFormat()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->isSpinnerWhileRefreshing()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 573
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    const-string v17, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v16, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual/range {v16 .. v16}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-object v2

    .line 551
    .end local v2           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 552
    .local v3, e:Lorg/json/JSONException;
    const-string v16, "QSB.ShortcutRepositoryImplLog"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Could not flatten extras to JSON from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private static nextString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 487
    .local v2, len:I
    if-nez v2, :cond_0

    .line 499
    .end local p0
    :goto_0
    return-object p0

    .line 492
    .restart local p0
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 495
    .local v0, codePoint:I
    add-int/lit8 v3, v0, 0x1

    .line 498
    .local v3, nextCodePoint:I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int v1, v2, v4

    .line 499
    .local v1, lastIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private runQueryAsync(Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/quicksearchbox/util/SQLiteAsyncQuery",
            "<TA;>;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, query:Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;,"Lcom/android/quicksearchbox/util/SQLiteAsyncQuery<TA;>;"
    .local p2, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mLogExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;Lcom/android/quicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private runTransactionAsync(Lcom/android/quicksearchbox/util/SQLiteTransaction;)V
    .locals 2
    .parameter "transaction"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mLogExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$1;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Lcom/android/quicksearchbox/util/SQLiteTransaction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method private shouldRefresh(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 3
    .parameter "suggestion"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutRefresher;->shouldRefresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private stringToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .parameter "str"

    .prologue
    .line 619
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearHistory()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$5;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$5;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)V

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/android/quicksearchbox/util/SQLiteTransaction;)V

    .line 253
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;->close()V

    .line 262
    return-void
.end method

.method public deleteRepository()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;->deleteDatabase()V

    .line 258
    return-void
.end method

.method getCorpusScores(I)Ljava/util/Map;
    .locals 9
    .parameter "minClicks"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v5, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v5}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 513
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->SOURCE_RANKING_SQL:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 516
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 517
    .local v1, corpora:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 518
    sget-object v5, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->corpus:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v5}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->ordinal()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, name:Ljava/lang/String;
    sget-object v5, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v5}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->ordinal()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 520
    .local v0, clicks:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    .end local v0           #clicks:I
    .end local v1           #corpora:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v1       #corpora:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getCorpusScores(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)V

    invoke-direct {p0, v0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runQueryAsync(Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;Lcom/android/quicksearchbox/util/Consumer;)V

    .line 292
    return-void
.end method

.method protected getOpenHelper()Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    return-object v0
.end method

.method getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZJ)Lcom/android/quicksearchbox/ShortcutCursor;
    .locals 18
    .parameter "query"
    .parameter
    .parameter "allowWebSearchShortcuts"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;ZJ)",
            "Lcom/android/quicksearchbox/ShortcutCursor;"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, allowedCorpora:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mEmptyQueryShortcutQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 320
    .local v17, sql:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->buildShortcutQueryParams(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object v15

    .line 322
    .local v15, params:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 323
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 324
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 325
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v3, 0x0

    .line 338
    :goto_1
    return-object v3

    .line 319
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #params:[Ljava/lang/String;
    .end local v17           #sql:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mShortcutQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_0

    .line 330
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15       #params:[Ljava/lang/String;
    .restart local v17       #sql:Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v9, allowedSources:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/quicksearchbox/Source;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/quicksearchbox/Corpus;

    .line 332
    .local v10, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-interface {v10}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/quicksearchbox/Source;

    .line 334
    .local v16, source:Lcom/android/quicksearchbox/Source;
    invoke-interface/range {v16 .. v16}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 338
    .end local v10           #corpus:Lcom/android/quicksearchbox/Corpus;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #source:Lcom/android/quicksearchbox/Source;
    :cond_3
    new-instance v3, Lcom/android/quicksearchbox/ShortcutCursor;

    new-instance v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v9, v1, v11}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SuggestionCursorImpl;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/util/HashMap;Ljava/lang/String;Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mUiThread:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    move/from16 v5, p3

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/quicksearchbox/ShortcutCursor;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;ZLandroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V

    goto :goto_1
.end method

.method public getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/android/quicksearchbox/util/Consumer;)V
    .locals 9
    .parameter "query"
    .parameter
    .parameter "allowWebSearchShortcuts"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;Z",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<",
            "Lcom/android/quicksearchbox/ShortcutCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, allowedCorpora:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/quicksearchbox/Corpus;>;"
    .local p4, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Lcom/android/quicksearchbox/ShortcutCursor;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 272
    .local v5, now:J
    iget-object v8, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mLogExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/lang/String;Ljava/util/Collection;ZJLcom/android/quicksearchbox/util/Consumer;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public hasHistory(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$3;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$3;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)V

    invoke-direct {p0, v0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runQueryAsync(Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;Lcom/android/quicksearchbox/util/Consumer;)V

    .line 228
    return-void
.end method

.method refreshShortcut(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 5
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    const/4 v4, 0x0

    .line 345
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "source"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "shortcutId"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 350
    .local v1, whereArgs:[Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 351
    :cond_2
    const/4 v0, 0x0

    .line 357
    .local v0, shortcut:Landroid/content/ContentValues;
    :goto_0
    new-instance v2, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$8;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$8;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/android/quicksearchbox/util/SQLiteTransaction;)V

    .line 371
    return-void

    .line 353
    .end local v0           #shortcut:Landroid/content/ContentValues;
    :cond_3
    invoke-interface {p3, v4}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 354
    invoke-direct {p0, p3}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->makeShortcutRow(Lcom/android/quicksearchbox/Suggestion;)Landroid/content/ContentValues;

    move-result-object v0

    .restart local v0       #shortcut:Landroid/content/ContentValues;
    goto :goto_0
.end method

.method public removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 2
    .parameter "suggestions"
    .parameter "position"

    .prologue
    .line 231
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->makeIntentKey(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, intentKey:Ljava/lang/String;
    new-instance v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$4;

    invoke-direct {v1, p0, v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$4;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/android/quicksearchbox/util/SQLiteTransaction;)V

    .line 241
    return-void
.end method

.method public reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 2
    .parameter "suggestions"
    .parameter "position"

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 266
    .local v0, now:J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->reportClickAtTime(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V

    .line 267
    return-void
.end method

.method reportClickAtTime(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V
    .locals 7
    .parameter "suggestion"
    .parameter "position"
    .parameter "now"

    .prologue
    .line 640
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 645
    const-string v4, "_-1"

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 683
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v4, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/quicksearchbox/Corpora;->getCorpusForSource(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    .line 651
    .local v1, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v1, :cond_1

    .line 652
    const-string v4, "QSB.ShortcutRepositoryImplLog"

    const-string v5, "no corpus for clicked suggestion"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    :cond_1
    iget-object v4, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/quicksearchbox/ShortcutRefresher;->markShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->makeShortcutRow(Lcom/android/quicksearchbox/Suggestion;)Landroid/content/ContentValues;

    move-result-object v3

    .line 665
    .local v3, shortcut:Landroid/content/ContentValues;
    sget-object v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, intentKey:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 669
    .local v0, click:Landroid/content/ContentValues;
    sget-object v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-object v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 672
    sget-object v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->corpus:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v4, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;-><init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    invoke-direct {p0, v4}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/android/quicksearchbox/util/SQLiteTransaction;)V

    goto :goto_0
.end method

.method public updateShortcut(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 282
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->refreshShortcut(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 283
    return-void
.end method
