.class public Lcom/android/browser/MiuiBrowserYesNoPreference;
.super Lcom/android/browser/BrowserYesNoPreference;
.source "MiuiBrowserYesNoPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserYesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .local v0, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010355

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiBrowserYesNoPreference;->setDialogIcon(I)V

    .line 14
    return-void
.end method
