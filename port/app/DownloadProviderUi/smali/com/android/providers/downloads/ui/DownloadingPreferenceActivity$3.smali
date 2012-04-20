.class Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$3;
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
    .line 96
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$3;->val$enabled:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$3;->val$enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/MiuiDownloadManager;->setMobileFileSizePromptEnabled(Landroid/content/Context;Z)Z

    .line 100
    return-void
.end method
