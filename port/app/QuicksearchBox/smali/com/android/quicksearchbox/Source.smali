.class public interface abstract Lcom/android/quicksearchbox/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionCursorProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/SuggestionCursorProvider",
        "<",
        "Lcom/android/quicksearchbox/SourceResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract getDefaultIntentAction()Ljava/lang/String;
.end method

.method public abstract getDefaultIntentData()Ljava/lang/String;
.end method

.method public abstract getHint()Ljava/lang/CharSequence;
.end method

.method public abstract getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIconUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getIntentComponent()Landroid/content/ComponentName;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getMaxShortcuts(Lcom/android/quicksearchbox/Config;)I
.end method

.method public abstract getQueryThreshold()I
.end method

.method public abstract getRoot()Lcom/android/quicksearchbox/Source;
.end method

.method public abstract getSettingsDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getSourceIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSourceIconUri()Landroid/net/Uri;
.end method

.method public abstract getSuggestUri()Ljava/lang/String;
.end method

.method public abstract getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SourceResult;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract includeInAll()Z
.end method

.method public abstract isVersionCodeCompatible(I)Z
.end method

.method public abstract queryAfterZeroResults()Z
.end method

.method public abstract refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
.end method

.method public abstract voiceSearchEnabled()Z
.end method
