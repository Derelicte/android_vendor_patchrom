.class Lcom/android/systemui/settings/NotificationIconFilterSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationIconFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/NotificationIconFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$2;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$2;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$202(Lcom/android/systemui/settings/NotificationIconFilterSettings;Z)Z

    .line 308
    return-void
.end method
