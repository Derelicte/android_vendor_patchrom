.class public interface abstract Lcom/android/quicksearchbox/SearchSettings;
.super Ljava/lang/Object;
.source "SearchSettings.java"


# virtual methods
.method public abstract addMenuItems(Landroid/view/Menu;Z)V
.end method

.method public abstract allowWebSearchShortcuts()Z
.end method

.method public abstract broadcastSettingsChanged()V
.end method

.method public abstract getSearchBaseDomain()Ljava/lang/String;
.end method

.method public abstract getSearchBaseDomainApplyTime()J
.end method

.method public abstract getSearchableItemsIntent()Landroid/content/Intent;
.end method

.method public abstract isCorpusEnabled(Lcom/android/quicksearchbox/Corpus;)Z
.end method

.method public abstract setSearchBaseDomain(Ljava/lang/String;)V
.end method

.method public abstract shouldUseGoogleCom()Z
.end method

.method public abstract upgradeSettingsIfNeeded()V
.end method
