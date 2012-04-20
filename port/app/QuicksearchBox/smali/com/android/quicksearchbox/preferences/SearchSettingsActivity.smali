.class public Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SearchSettingsActivity.java"


# static fields
.field private static final CLEAR_SHORTCUTS_FRAGMENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/quicksearchbox/preferences/DeviceSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->CLEAR_SHORTCUTS_FRAGMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method protected getShortcutsOnlyFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->CLEAR_SHORTCUTS_FRAGMENT:Ljava/lang/String;

    return-object v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f060003

    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->onHeadersBuilt(Ljava/util/List;)V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 50
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getHelp()Lcom/android/quicksearchbox/Help;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/quicksearchbox/Help;->addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;Z)V

    .line 51
    return v2
.end method

.method protected onHeadersBuilt(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->getShortcutsOnlyFragment()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, shortcutsFragment:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/Config;->showShortcutsForZeroQuery()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 73
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 75
    .local v0, fragment:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
