.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;
.super Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getCorpusScores(Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/util/SQLiteAsyncQuery",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    invoke-direct {p0}, Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 1
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$7;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    #calls: Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getCorpusScores()Ljava/util/Map;
    invoke-static {v0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->access$200(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
