.class public Lcom/android/quicksearchbox/preferences/ClearShortcutsController;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/android/quicksearchbox/preferences/PreferenceController;


# instance fields
.field private mClearShortcutsPreference:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 1
    .parameter "shortcuts"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->clearShortcuts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)Lcom/android/quicksearchbox/preferences/OkCancelPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    return-object v0
.end method

.method private clearShortcuts()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "QSB.ClearShortcutsController"

    const-string v1, "Clearing shortcuts..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRepository;->clearHistory()V

    .line 91
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/preferences/OkCancelPreference;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method private updateClearShortcutsPreference()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$2;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$2;-><init>(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)V

    invoke-static {v1, v2}, Lcom/android/quicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ShortcutRepository;->hasHistory(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 86
    return-void
.end method


# virtual methods
.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 48
    check-cast p1, Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    new-instance v1, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$1;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$1;-><init>(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/preferences/OkCancelPreference;->setListener(Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;)V

    .line 57
    return-void
.end method

.method public onCreateComplete()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->updateClearShortcutsPreference()V

    .line 71
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
