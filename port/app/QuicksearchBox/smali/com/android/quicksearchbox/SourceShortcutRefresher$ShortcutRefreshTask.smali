.class Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;
.super Ljava/lang/Object;
.source "SourceShortcutRefresher.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SourceShortcutRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutRefreshTask"
.end annotation


# instance fields
.field private final mExtraData:Ljava/lang/String;

.field private final mListener:Lcom/android/quicksearchbox/ShortcutRefresher$Listener;

.field private final mShortcutId:Ljava/lang/String;

.field private final mSource:Lcom/android/quicksearchbox/Source;

.field final synthetic this$0:Lcom/android/quicksearchbox/SourceShortcutRefresher;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SourceShortcutRefresher;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Ljava/lang/String;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V
    .locals 0
    .parameter
    .parameter "source"
    .parameter "shortcutId"
    .parameter "extraData"
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->this$0:Lcom/android/quicksearchbox/SourceShortcutRefresher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/quicksearchbox/Source;

    .line 123
    iput-object p3, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mExtraData:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mListener:Lcom/android/quicksearchbox/ShortcutRefresher$Listener;

    .line 126
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/quicksearchbox/Source;

    iget-object v2, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mExtraData:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/quicksearchbox/Source;->refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 136
    .local v0, refreshed:Lcom/android/quicksearchbox/SuggestionCursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    .line 138
    const/4 v0, 0x0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->this$0:Lcom/android/quicksearchbox/SourceShortcutRefresher;

    iget-object v2, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/quicksearchbox/Source;

    iget-object v3, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/quicksearchbox/SourceShortcutRefresher;->markShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mListener:Lcom/android/quicksearchbox/ShortcutRefresher$Listener;

    iget-object v2, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/quicksearchbox/Source;

    iget-object v3, p0, Lcom/android/quicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/quicksearchbox/ShortcutRefresher$Listener;->onShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 142
    return-void
.end method
