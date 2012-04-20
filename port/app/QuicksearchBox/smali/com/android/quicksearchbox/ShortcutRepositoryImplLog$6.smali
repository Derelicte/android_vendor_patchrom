.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

.field final synthetic val$allowWebSearchShortcuts:Z

.field final synthetic val$allowedCorpora:Ljava/util/Collection;

.field final synthetic val$consumer:Lcom/android/quicksearchbox/util/Consumer;

.field final synthetic val$now:J

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Ljava/lang/String;Ljava/util/Collection;ZJLcom/android/quicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$allowedCorpora:Ljava/util/Collection;

    iput-boolean p4, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$allowWebSearchShortcuts:Z

    iput-wide p5, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$now:J

    iput-object p7, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$allowedCorpora:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$allowWebSearchShortcuts:Z

    iget-wide v4, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$now:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZJ)Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v6

    .line 276
    .local v6, shortcuts:Lcom/android/quicksearchbox/ShortcutCursor;
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$6;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-static {v0, v6}, Lcom/android/quicksearchbox/util/Consumers;->consumeCloseable(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    .line 277
    return-void
.end method
