.class Lcom/android/systemui/settings/ToggleManager$9;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleManager;->toggleVibrate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$9;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1238
    const-string v2, "com.android.settings/.SoundSettings"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1240
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1241
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1243
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1244
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager$9;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleManager;->access$1000(Lcom/android/systemui/settings/ToggleManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1246
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager$9;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleManager;->access$1000(Lcom/android/systemui/settings/ToggleManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 1248
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
