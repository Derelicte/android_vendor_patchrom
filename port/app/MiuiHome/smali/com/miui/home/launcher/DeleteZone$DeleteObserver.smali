.class Lcom/miui/home/launcher/DeleteZone$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DeleteZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation


# instance fields
.field private mInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/DeleteZone;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 198
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const v1, 0x7f0b002e

    .line 202
    packed-switch p2, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 218
    :cond_0
    :goto_1
    return-void

    .line 204
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$000(Lcom/miui/home/launcher/DeleteZone;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherSettings;->deletePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    goto :goto_0

    .line 212
    :pswitch_3
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
