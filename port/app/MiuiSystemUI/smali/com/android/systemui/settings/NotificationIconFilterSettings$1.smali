.class Lcom/android/systemui/settings/NotificationIconFilterSettings$1;
.super Landroid/database/ContentObserver;
.source "NotificationIconFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/NotificationIconFilterSettings;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$1;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$1;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingLoaded:Z
    invoke-static {v0, v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$002(Lcom/android/systemui/settings/NotificationIconFilterSettings;Z)Z

    .line 115
    return-void
.end method
