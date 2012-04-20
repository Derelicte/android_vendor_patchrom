.class Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$2;
.super Ljava/lang/Object;
.source "DownloadingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;

.field final synthetic val$enabled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$2;->this$0:Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$2;->val$enabled:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$2;->this$0:Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;

    #getter for: Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mEnableMaxBytesPopupPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->access$000(Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$2;->val$enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
