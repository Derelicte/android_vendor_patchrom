.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$5;
.super Lcom/android/quicksearchbox/util/SQLiteTransaction;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$5;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    invoke-direct {p0}, Lcom/android/quicksearchbox/util/SQLiteTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method public performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .parameter "db"

    .prologue
    const/4 v1, 0x0

    .line 247
    const-string v0, "clicklog"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 248
    const-string v0, "shortcuts"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    const-string v0, "sourcetotals"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x1

    return v0
.end method
