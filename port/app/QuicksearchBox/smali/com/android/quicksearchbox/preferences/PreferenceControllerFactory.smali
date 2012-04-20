.class public Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;
.super Ljava/lang/Object;
.source "PreferenceControllerFactory.java"

# interfaces
.implements Lcom/android/quicksearchbox/preferences/PreferenceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/preferences/PreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/quicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchSettings;Landroid/content/Context;)V
    .locals 1
    .parameter "settings"
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 39
    iput-object p2, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method protected addController(Lcom/android/quicksearchbox/preferences/PreferenceController;Landroid/preference/Preference;)V
    .locals 1
    .parameter "controller"
    .parameter "forPreference"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    .line 88
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v3, "search_corpora"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    .line 52
    .local v0, corpora:Lcom/android/quicksearchbox/Corpora;
    new-instance v3, Lcom/android/quicksearchbox/preferences/SearchableItemsController;

    iget-object v4, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;-><init>(Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Corpora;Landroid/content/Context;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->addController(Lcom/android/quicksearchbox/preferences/PreferenceController;Landroid/preference/Preference;)V

    goto :goto_0

    .line 53
    .end local v0           #corpora:Lcom/android/quicksearchbox/Corpora;
    :cond_1
    const-string v3, "clear_shortcuts"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v2

    .line 55
    .local v2, shortcuts:Lcom/android/quicksearchbox/ShortcutRepository;
    new-instance v3, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;

    invoke-direct {v3, v2}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;-><init>(Lcom/android/quicksearchbox/ShortcutRepository;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->addController(Lcom/android/quicksearchbox/preferences/PreferenceController;Landroid/preference/Preference;)V

    goto :goto_0

    .line 57
    .end local v2           #shortcuts:Lcom/android/quicksearchbox/ShortcutRepository;
    :cond_2
    new-instance v3, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;

    invoke-direct {v3, p1}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;-><init>(Landroid/preference/Preference;)V

    throw v3
.end method

.method public onCreateComplete()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 63
    .local v0, controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onCreateComplete()V

    goto :goto_0

    .line 65
    .end local v0           #controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 81
    .local v0, controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onDestroy()V

    goto :goto_0

    .line 83
    .end local v0           #controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 69
    .local v0, controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onResume()V

    goto :goto_0

    .line 71
    .end local v0           #controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 75
    .local v0, controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onStop()V

    goto :goto_0

    .line 77
    .end local v0           #controller:Lcom/android/quicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method
